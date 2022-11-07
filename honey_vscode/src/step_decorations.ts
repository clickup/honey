import * as vs from "vscode";
import { HoneyStep } from "./honey_connection";
import { disposeAll } from "./utils";

export class StepDecorations {
  private disposables: vs.Disposable[] = [];
  private activeEditor: vs.TextEditor | undefined;
  private timeout?: NodeJS.Timer;
  private steps: Map<string, HoneyStep[]> = new Map();

  private checkDecoration = this.getDecoration("check");
  private cancelDecoration = this.getDecoration("cancel");
  private scheduleDecoration = this.getDecoration("schedule");
  private nextDecoration = this.getDecoration("next");

  constructor() {
    this.activeEditor = vs.window.activeTextEditor;

    vs.window.onDidChangeActiveTextEditor(
      (editor) => {
        this.activeEditor = editor;
        if (editor) {
          this.triggerUpdateDecorations();
        }
      },
      null,
      this.disposables
    );

    vs.workspace.onDidChangeTextDocument(
      (event) => {
        if (
          this.activeEditor &&
          event.document === this.activeEditor.document
        ) {
          this.triggerUpdateDecorations(true);
        }
      },
      null,
      this.disposables
    );

    vs.debug.onDidReceiveDebugSessionCustomEvent(
      (e) => {
        if (e.event === "honey.step") {
          const uri = e.body.testUri;
          var steps = this.steps.get(uri) ?? [];
          if (e.body.firstStep) {
            steps = [];
          }
          steps.push(e.body.step);
          this.steps.set(uri, steps);

          if (this.activeEditor?.document.uri.fsPath === uri) {
            this.triggerUpdateDecorations();
          }
        }
      },
      null,
      this.disposables
    );
  }

  public dispose() {
    disposeAll(this.disposables);
  }

  private getDecoration(icon: string) {
    return vs.window.createTextEditorDecorationType({
      light: {
        gutterIconPath: vs.Uri.file(`${__dirname}/../assets/${icon}.svg`),
        gutterIconSize: "95%",
      },
      dark: {
        gutterIconPath: vs.Uri.file(`${__dirname}/../assets/${icon}.svg`),
        gutterIconSize: "95%",
      },
    });
  }

  private triggerUpdateDecorations(throttle = false) {
    if (this.timeout) {
      clearTimeout(this.timeout);
      this.timeout = undefined;
    }
    if (throttle) {
      this.timeout = setTimeout(this.updateDecorations, 500);
    } else {
      this.updateDecorations();
    }
  }

  private updateDecorations() {
    if (!this.activeEditor) {
      return;
    }

    const steps = this.steps.get(this.activeEditor.document.uri.fsPath);
    if (!steps) {
      return;
    }

    const checkDecorations: vs.DecorationOptions[] = [];
    const errorDecorations: vs.DecorationOptions[] = [];
    const waitingDecorations: vs.DecorationOptions[] = [];
    const skippedDecorations: vs.DecorationOptions[] = [];
    for (var i = 0; i < steps.length; i++) {
      const step = steps[i];
      const line = this.activeEditor.document.lineAt(step.line).text;
      if (!line.toLowerCase().includes(step.step.toLowerCase())) {
        continue;
      }
      const range = new vs.Range(step.line, 0, step.line, step.step.length);
      const hoverMessage = step.output;
      if (step.skipped) {
        skippedDecorations.push({ range, hoverMessage });
      } else if (step.error) {
        errorDecorations.push({ range, hoverMessage });
      } else {
        checkDecorations.push({ range, hoverMessage });
      }
      if (step.nextLine && i == steps.length - 1) {
        const nextLine = this.activeEditor.document.lineAt(step.nextLine).text;
        const nextLineRange = new vs.Range(
          step.nextLine,
          0,
          step.nextLine,
          nextLine.length
        );
        waitingDecorations.push({ range: nextLineRange });
      }
    }

    this.activeEditor.setDecorations(this.checkDecoration, checkDecorations);
    this.activeEditor.setDecorations(this.cancelDecoration, errorDecorations);
    this.activeEditor.setDecorations(
      this.scheduleDecoration,
      waitingDecorations
    );
    this.activeEditor.setDecorations(this.nextDecoration, skippedDecorations);
  }
}
