#! /bin/bash

git init
git checkout -b main
git add README.md
git commit -m "init"

git remote add origin http://thor.trex-woodpecker.ts.net:8418/bwest/prata.git
git push -u origin main