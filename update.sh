#!/usr/bin/env bash
set -euxo pipefail

DIR="$(cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd)"

cd "$DIR"
rm -rf "$DIR/vim-go"
rm -rf "$DIR/syntax"
rm -rf "$DIR/ftdetect"
rm -rf "$DIR/autoload"

git clone https://github.com/fatih/vim-go vim-go

mkdir "$DIR/syntax/"
mkdir "$DIR/ftdetect/"
mkdir -p "$DIR/autoload/go"

cp "$DIR"/vim-go/ftdetect/* "$DIR/ftdetect/"
cp "$DIR"/vim-go/syntax/* "$DIR/syntax/"

AUTOLOADS="config path util"
for FILE in $AUTOLOADS
do
  cp "$DIR/vim-go/autoload/go/$FILE.vim" "$DIR/autoload/go/"
done

rm -rf "$DIR/vim-go"
