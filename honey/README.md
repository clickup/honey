<picture>
  <source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/clickup/honey/main/.github/assets/honey-banner-dark.svg">
  <source media="(prefers-color-scheme: light)" srcset="https://raw.githubusercontent.com/clickup/honey/main/.github/assets/honey-banner-light.svg">
  <img alt="Honey Logo banner" src="https://raw.githubusercontent.com/clickup/honey/main/.github/assets/honey-banner-light.svg">
</picture>

<p align="center">
  <a href="https://pub.dev/packages/honey">
    <img src="https://img.shields.io/pub/v/honey?label=pub.dev&labelColor=333940&logo=dart">
  </a>
   <a href="https://honey.dev">
    <img src="https://img.shields.io/static/v1?label=honey&message=docs&labelColor=333940&logo=mdBook&logoColor=white&color=229ED9">
  </a>
  <a href="https://github.com/clickup/honey/actions/workflows/dart.yml">
    <img src="https://img.shields.io/github/workflow/status/clickup/honey/Dart%20CI/main?label=tests&labelColor=333940&logo=github">
  </a>
  <a href="https://app.codecov.io/gh/clickup/honey">
    <img src="https://img.shields.io/codecov/c/github/clickup/honey?logo=codecov&logoColor=fff&labelColor=333940">
  </a>
</p>

Honey is an end-to-end test framework for Flutter apps. It is designed to be really easy to set up and use. The HoneyTalk test language feels natural to write and read. It is powerful enough to enable you to write complex tests with ease.

Let's start by looking at a simple test:

[![Counter App Sample](https://raw.githubusercontent.com/clickup/honey/main/.github/assets/sample-counter-app.svg)](#)

To test the app like a real user, Honey relies on the accessibility tree to find widgets on the screen. This allows test designers to write tests without having to worry about the implementation details of the app or even knowing Flutter.

## Setup

The setup of Honey is really easy. Just add the following to your `pubspec.yaml`:

```yaml
dependencies:
  honey: ^0.1.0
```

Then run `flutter pub get` to install the package.

The only thing left to do is to initialize the `HoneyWidgetsBinding` in your `main()` function. We recommend using --dart-defines to only enable Honey for test builds:

```dart
const kIsHoney = bool.fromEnvironment('HONEY');

void main() {
  if (kIsHoney) {
    HoneyWidgetsBinding.ensureInitialized();
  }

  runApp(MyApp());
}
```

You can then run your app with `flutter run --dart-define HONEY=true` to enable Honey.

## Writing Tests

HoneyTalk is a full programming language and very powerful. It is asynchronous by default so you never have to use `delay` or `wait` to wait for animations to finish. Let's look at a more advanced example:

[![ClickUp login Sample](https://raw.githubusercontent.com/clickup/honey/main/.github/assets/sample-clickup-login.svg)](#)

Honey also understands references and context which makes it easy to find widgets in complex apps. Here are a few examples:

[![References Sample](https://raw.githubusercontent.com/clickup/honey/main/.github/assets/sample-references.svg)](#)

And of course, Honey allows you to use conditions in your tests (although we recommend keeping tests as simple as possible)

[![Conditions Sample](https://raw.githubusercontent.com/clickup/honey/main/.github/assets/sample-conditions.svg)](#)
