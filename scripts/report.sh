#!/bin/sh

DIR="$(pwd)/report/"
FILES="${DIR}*_*.md"

CONTENT=""

for FILE in $FILES; do
  CONTENT="${CONTENT}\n\n$(cat $FILE)\n"
done

echo "$CONTENT" \
 | sed 's/\.\.\/images\//\.\/images\//g' \
 | pandoc --toc -o report.pdf \
   -V lang=fr -V fontsize=12pt -V documentclass=report
