BASENAME=dissertation
NAME=dissertation.tex
pdflatex $NAME
bibtex $BASENAME
makeglossaries $BASENAME
pdflatex $NAME
pdflatex $NAME
