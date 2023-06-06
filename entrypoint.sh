#!/bin/bash
set -e -x -o pipefail

cd $1

git config --global --add safe.directory '*'

protoc --rust_out=rust *.proto

git diff
git diff-index --quiet HEAD
