#!/bin/sh

while read extension
do
  code --install-extension $extension
done < ./extensions.txt
