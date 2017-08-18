#!/bin/sh

DIR="$(pwd)/report/"
FILES="${DIR}*.md"

CONTENT="$(cat ${DIR}headers.txt)\n"

for FILE in $FILES; do
  CONTENT="${CONTENT}\n\n$(cat $FILE)\n"
done

echo "$CONTENT" \
 | sed 's/\.\.\/images\//\.\/images\//g' \
 | pandoc --toc -o report.pdf \
   -V lang=fr -V fontsize=12pt -V documentclass=report
