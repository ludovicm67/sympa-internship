#!/bin/sh

DIR="$(pwd)/docs/james/"
FILES="${DIR}*_*.md"

CONTENT="$(cat ${DIR}headers.txt)\n"

for FILE in $FILES; do
  CONTENT="${CONTENT}\n\n$(cat $FILE)\n"
done

echo "$CONTENT" \
 | sed 's/\.\.\/\.\.\/images\//\.\/images\//g' \
 | pandoc -V geometry:margin=1.5cm -o doc_james.pdf
