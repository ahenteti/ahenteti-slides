#!/usr/bin/env bash

ROOT_DIR=$(dirname "$0")"/../"
rm -rf dist
cd $ROOT_DIR
ng build
