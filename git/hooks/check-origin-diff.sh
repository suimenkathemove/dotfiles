#!/bin/sh
# Check if current branch has unpushed commits compared to origin

BRANCH=$(git symbolic-ref --short HEAD 2>/dev/null)
if [ -z "$BRANCH" ]; then
  exit 0
fi

# Check if origin exists
if ! git remote get-url origin > /dev/null 2>&1; then
  exit 0
fi

# Fetch origin (silently); skip check if fetch fails (e.g. no network)
# if ! git fetch origin "$BRANCH" --quiet 2>/dev/null; then
#   exit 0
# fi

# Check if origin/<branch> exists
if ! git rev-parse "origin/$BRANCH" > /dev/null 2>&1; then
  exit 0
fi

UNPUSHED=$(git rev-list HEAD ^"origin/$BRANCH" --count 2>/dev/null)
if [ "$UNPUSHED" -gt 0 ]; then
  echo "Error: $UNPUSHED unpushed commit(s) exist on '$BRANCH'." >&2
  echo "Push before committing: git push origin $BRANCH" >&2
  exit 1
fi
