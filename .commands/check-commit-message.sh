#!/bin/bash

expected="$1"

last_commit_message=$(git log -1 --pretty=%B)

if [ "$expected" = "$last_commit_message" ]; then
  echo o

  current_branch_name=$(git branch | grep \* | cut -d ' ' -f2)
  git push origin "$current_branch_name"

  git branch -D trial
else
  echo x
fi
