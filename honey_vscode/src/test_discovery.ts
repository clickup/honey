import * as path from "path";
import * as vs from "vscode";
import { disposeAll } from "./utils";

export class TestDiscovery implements vs.Disposable {
  private disposables: vs.Disposable[] = [];
  private controller: vs.TestController;
  private itemForUri = new Map<string, vs.TestItem>();

  constructor(controller: vs.TestController) {
    this.controller = controller;
  }

  public startWatching() {
    const createDisposable = vs.workspace.onDidCreateFiles((e) => {
      for (const uri of e.files) {
        this.discoverAndAddItem(uri);
      }
    });
    const renameDisposable = vs.workspace.onDidRenameFiles((e) => {
      for (const file of e.files) {
        this.renameItem(file.oldUri, file.newUri);
      }
    });
    const deleteDisposable = vs.workspace.onDidDeleteFiles((e) => {
      for (const uri of e.files) {
        this.removeItem(uri);
      }
    });
    this.disposables.push(createDisposable, renameDisposable, deleteDisposable);
    this.discoverAll();
  }

  public dispose() {
    disposeAll(this.disposables);
  }

  public async discoverAll() {
    this.controller.items.forEach((item) => {
      this.removeItem(item.uri!);
    });
    if (vs.workspace.workspaceFolders) {
      const promises = vs.workspace.workspaceFolders?.map(async (folder) => {
        const childFiles = await vs.workspace.fs.readDirectory(folder.uri);
        for (const [name, _] of childFiles) {
          this.discoverAndAddItem(vs.Uri.joinPath(folder.uri, name));
        }
      });
      await Promise.all(promises);
    }
  }

  private async discoverAndAddItem(uri: vs.Uri) {
    const parentUri = uri.fsPath.split(path.sep).slice(0, -1).join(path.sep);
    const parent = this.itemForUri.get(parentUri);
    if (!parent && isWithinWorkspace(parentUri)) {
      this.discoverAndAddItem(vs.Uri.file(parentUri));
      return;
    }

    this.removeItem(uri);

    const newItemForUri = new Map<vs.Uri, vs.TestItem>();
    const item = await this.discoverItem(newItemForUri, uri);
    if (item) {
      for (const [uri, item] of newItemForUri) {
        this.itemForUri.set(uri.fsPath, item);
      }
      if (parent) {
        parent.children.add(item);
      } else {
        this.controller.items.add(item);
      }
    }
  }

  private async discoverItem(
    newItemForUri: Map<vs.Uri, vs.TestItem>,
    uri: vs.Uri,
    name?: string,
    type?: vs.FileType
  ): Promise<vs.TestItem | undefined> {
    type = type || (await vs.workspace.fs.stat(uri)).type!;
    name = name || uri.fsPath.split(path.sep).pop()!;

    if (name.startsWith(".")) {
      return;
    }

    if (type === vs.FileType.File && uri.path.endsWith(".ht")) {
      const item = this.controller.createTestItem(name, name, uri);
      newItemForUri.set(uri, item);
      return item;
    } else if (type === vs.FileType.Directory) {
      const childFiles = await vs.workspace.fs.readDirectory(uri);
      const children = childFiles.map(([childName, childType]) => {
        return this.discoverItem(
          newItemForUri,
          vs.Uri.joinPath(uri, childName),
          childName,
          childType
        );
      });
      const definedChildren = (await Promise.all(children)).filter(
        (c): c is vs.TestItem => c !== undefined
      );

      if (definedChildren.length > 0) {
        const item = this.controller.createTestItem(name, name, uri);
        item.children.replace(definedChildren);
        newItemForUri.set(uri, item);
        return item;
      }
    }

    return undefined;
  }

  private renameItem(oldUri: vs.Uri, newUri: vs.Uri) {
    this.removeItem(oldUri);
    this.discoverAndAddItem(newUri);
  }

  private removeItem(uri: vs.Uri) {
    const item = this.itemForUri.get(uri.fsPath);
    if (!item) {
      return;
    }

    if (item.parent) {
      if (item.parent.children.size == 1) {
        this.removeItem(item.parent.uri!);
        return;
      } else {
        item.parent.children.delete(item.id);
      }
    } else {
      this.controller.items.delete(item.id);
    }

    const itemForUri = this.itemForUri;
    itemForUri.delete(uri.fsPath);

    function removeChildren(item: vs.TestItem) {
      item.children.forEach((child) => {
        if (child.uri) {
          itemForUri.delete(child.uri.fsPath);
          removeChildren(child);
        }
      });
    }
    removeChildren(item);
  }

  public getTestItem(uri: string): vs.TestItem | undefined {
    return this.itemForUri.get(uri);
  }
}

function isWithinWorkspace(folder: string): boolean {
  return (
    vs.workspace.workspaceFolders?.some((f) =>
      isWithinPath(folder, f.uri.fsPath)
    ) ?? false
  );
}

function isWithinPath(file: string, folder: string): boolean {
  const relative = path.relative(folder.toLowerCase(), file.toLowerCase());
  return !!relative && !relative.startsWith("..") && !path.isAbsolute(relative);
}
