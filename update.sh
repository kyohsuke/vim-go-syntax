#!/usr/bin/env bash

DIR="$(cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd)"

cd "$DIR/vim-go"
git checkout master
git pull --rebase

cd "$DIR"
rm -rf "$DIR"/syntax/*
cp "$DIR"/vim-go/syntax/* "$DIR/syntax/"
rm -f "$DIR/syntax/go.vim"
