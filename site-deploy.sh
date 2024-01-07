#!/bin/bash
git checkout main

stack build && stack exec site rebuild || exit 1

git switch --orphan deploy && git add _site && git commit -m "added _site" || exit 1
git subtree split -P _site -b pages && git checkout pages || exit 1

git push origin pages --force && git checkout main || exit 1

git branch -D deploy &>/dev/null
git branch -D pages &>/dev/null
