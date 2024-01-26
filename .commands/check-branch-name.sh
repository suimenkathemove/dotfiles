#!/bin/bash

expected="$1"

current_branch_name=$(git branch | grep \* | cut -d ' ' -f2)

if [ "$expected" = "$current_branch_name" ]; then
  echo o
  git push origin "$current_branch_name"
else
  echo x
fi
