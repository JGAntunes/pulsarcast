#!/bin/bash

# Compile the tex reports at each directory
# Examples:
#
# Compile all the files
# $ bash compile.sh
#
# Compile all the files, except for the dissertation
# $ DISSERTATION=0 bash compile.sh
#

DISSERTATION="${DISSERTATION:-1}"
SUMMARY="${SUMMARY:-1}"
PAPER="${PAPER:-1}"

compile() {
  PATH_TO_TEX=$1 
  NAME=$2 
  cd "$PATH_TO_TEX"

  pdflatex "$NAME.tex"
  bibtex $NAME
  makeglossaries $NAME
  pdflatex "$NAME.tex"
  pdflatex "$NAME.tex"

  cd -
}

if [ "$DISSERTATION" -eq "1" ]; then
  compile thesis dissertation
fi

if [ "$SUMMARY" -eq "1" ]; then
  compile thesis-summary-format thesis-summary
fi

if [ "$PAPER" -eq "1" ]; then
  compile paper paper
fi

