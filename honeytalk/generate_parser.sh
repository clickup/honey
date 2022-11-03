dart honeytalk/gen/antlr.dart
dart honeytalk/gen/tmlanguage.dart

ANTLR=antlr
if ! [ -x "$(command -v antlr)" ]; then
  ANTLR=antlr4
fi

$ANTLR -o honey/lib/src/compiler/antlr -no-listener -visitor -Dlanguage=Dart -Xexact-output-dir honeytalk/HoneyTalk.g4