#!/bin/bash
stack ghc -- site.hs -threaded && \
  stack exec ./site rebuild && \
  stack exec ./site watch
