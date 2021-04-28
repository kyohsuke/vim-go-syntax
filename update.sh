#!/usr/bin/env bash
set -euxo pipefail

DIR="$(cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd)"

git submodule init
git submodule update --remote --init --checkout

mkdir -p "$DIR/syntax/"
cd "$DIR"
rm -rf "$DIR"/syntax/*
cp "$DIR"/vim-go/syntax/* "$DIR/syntax/"
rm -f "$DIR/syntax/go.vim"
