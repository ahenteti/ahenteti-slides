#!/usr/bin/env bash

set -e
ROOT_DIR=$(dirname "$0")"/../"
rm -rf dist
cd $ROOT_DIR
ng build
git checkout gh-pages
cp dist/ahenteti-slides/* .
sed -i 's:src=":src="ahenteti-slides/:g' index.html
sed -i 's:href="favicon.png":href="ahenteti-slides/favicon.png":g' index.html
git commit -am "new website version"
git push
git checkout master
