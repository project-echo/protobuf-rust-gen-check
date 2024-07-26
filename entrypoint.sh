#!/bin/bash
set -e -x -o pipefail

cd $1

git config --global --add safe.directory '*'

protoc -I. --rust_out=rust/uploadermessages/src protos/*.proto protos/**/*.proto

git diff
git diff-index --quiet HEAD
