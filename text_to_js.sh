#!/usr/bin/sh

while read -r line
do
  printf "heroes.push(\"%s\")\n" "$line";
done < heroes.txt

