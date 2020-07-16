#!/usr/bin/env bash

set -e
ROOT_DIR=$(dirname "$0")"/../"
rm -rf dist
cd $ROOT_DIR
ng build --prod
git checkout gh-pages
rm index* main* polyfills* runtime* styles*
cp dist/ahenteti-slides/index* .
cp dist/ahenteti-slides/main* .
cp dist/ahenteti-slides/polyfills* .
cp dist/ahenteti-slides/runtime* .
cp dist/ahenteti-slides/styles* .
sed -i 's:src=":src="ahenteti-slides/:g' index.html
sed -i 's:href="favicon:href="ahenteti-slides/favicon:g' index.html
sed -i 's:href="styles:href="ahenteti-slides/styles:g' index.html
git add .
git commit -m "new website version"
git push
git checkout master
