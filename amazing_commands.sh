#!/bin/bash

# get the last difference with the latest commit of git
git log git_push.sh | grep commit | head -1 | awk '{print $2}' | git show