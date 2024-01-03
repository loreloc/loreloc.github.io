#!/bin/bash
stack ghc -- site.hs -threaded || exit 1
stack exec ./site rebuild || exit 1
stack exec ./site watch
