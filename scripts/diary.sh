#!/bin/sh

DIR="$(pwd)/diary/"
NEWPAGE='\\newpage'
FILES="${DIR}*_*.md"

CONTENT="$(cat ${DIR}headers.txt)\n\n\n\n"

for FILE in $FILES; do
  CONTENT="${CONTENT}$(cat $FILE)\n\n$NEWPAGE\n\n"
done

echo "$CONTENT" | head -n -3 | pandoc -o diary.pdf
