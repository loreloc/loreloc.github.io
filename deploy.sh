#!/bin/bash
stack build && stack exec site rebuild || exit 1
git switch --orphan deploy && git add _site && git commit -m "added _site" || exit 1
git branch -D pages && git subtree split -P _site -b pages || exit 1
git checkout pages && git branch -D deploy || exit 1
git push origin pages --force && git checkout main
