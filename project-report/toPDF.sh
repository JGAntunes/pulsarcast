#!/bin/bash

NAME=report
pdflatex $NAME
bibtex $NAME
pdflatex $NAME
pdflatex $NAME
