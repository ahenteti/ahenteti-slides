#!/usr/bin/env bash

set -e
ROOT_DIR=$(dirname "$0")"/../"
rm -rf dist
cd $ROOT_DIR
ng build
git checkout gh-pages
cp dist/ahenteti-slides/* .
git commit -am "new website version"
