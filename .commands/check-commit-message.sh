#!/bin/bash

expected="$1"

last_commit_message=$(git log -1 --pretty=%B)

if [ "$expected" = "$last_commit_message" ]; then
  echo o
else
  echo x
fi
