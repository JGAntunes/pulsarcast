BASENAME=paper
NAME=paper.tex
pdflatex $NAME
bibtex $BASENAME
makeglossaries $BASENAME
pdflatex $NAME
pdflatex $NAME
