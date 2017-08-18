#!/bin/sh

DIR="$(pwd)/report/"
FILES="${DIR}*_*.md"

pandoc -V fontsize=12pt -V geometry:left=4cm,right=4cm,top=8cm,bottom=.5cm "${DIR}remerciements.md" -o .report-head.pdf

CONTENT=""

for FILE in $FILES; do
  CONTENT="${CONTENT}\n\n$(cat $FILE)\n"
done

echo "${CONTENT}\n\n\listoffigures\n" \
 | sed 's/\.\.\/images\//\.\/images\//g' \
 | pandoc --toc -o .report-content.pdf \
   -V lang=fr -V fontsize=12pt -V documentclass=report

pdftk .report-head.pdf .report-content.pdf cat output report.pdf

rm -f .report-head.pdf .report-content.pdf
