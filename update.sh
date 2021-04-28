#!/usr/bin/env bash
set -euxo pipefail

DIR="$(cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd)"

cd "$DIR"
rm -rf "$DIR/vim-go"
rm -rf "$DIR/syntax"
rm -rf "$DIR/ftdetect"

git clone https://github.com/fatih/vim-go vim-go

mkdir "$DIR/syntax/"
mkdir "$DIR/ftdetect/"

cp "$DIR"/vim-go/ftdetect/* "$DIR/ftdetect/"
cp "$DIR"/vim-go/syntax/* "$DIR/syntax/"
rm -f "$DIR/syntax/go.vim"
rm -rf "$DIR/vim-go"
