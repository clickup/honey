ANTLR=antlr
if ! [ -x "$(command -v antlr)" ]; then
  ANTLR=antlr4
fi

$ANTLR -o lib/src/compiler/antlr -no-listener -visitor -Dlanguage=Dart HoneyTalk.g4