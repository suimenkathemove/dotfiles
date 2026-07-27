#!/bin/bash

current_branch=$(git branch | grep \* | cut -d ' ' -f2)
trial_branch="${current_branch}-trial"

git checkout -b "$trial_branch"
git push origin "$trial_branch"
