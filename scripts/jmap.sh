#!/bin/sh

DIR="$(pwd)/docs/jmap/"
FILES="${DIR}*_*.md"

CONTENT="$(cat ${DIR}headers.txt)\n"

for FILE in $FILES; do
  CONTENT="${CONTENT}\n\n$(cat $FILE)\n"
done

echo "$CONTENT" \
 | pandoc --listings -H ${DIR}listings-setup.tex --toc \
   -V geometry:margin=1.5cm -o doc_jmap.pdf
