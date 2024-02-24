#!/bin/bash

current_branch=$(git branch | grep \* | cut -d ' ' -f2)

commit_count=$(git rev-list --count origin/$current_branch..$current_branch)
echo commit_count is $commit_count

if [[ $commit_count -ne 1 ]]; then
  exit 1
fi

expected="$1"

last_commit_message=$(git log -1 --pretty=%B)

if [ "$expected" = "$last_commit_message" ]; then
  echo o

  git push origin "$current_branch"

  git branch -D trial
else
  echo x
fi
