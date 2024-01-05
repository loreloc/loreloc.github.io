#!/bin/bash
stack build && stack exec site rebuild || exit 1
stack exec site watch
