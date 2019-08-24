BASENAME=dissertation
NAME=$(BASENAME).tex
PDF=$(BASENAME).pdf
LATEX_COMPILER=pdflatex
LATEX_FLAGS=-shell-escape
GLOSSARIES_COMPILER=makeglossaries
BIB_COMPILER=bibtex

all: build

pdf:
	$(LATEX_COMPILER) $(LATEX_FLAGS) $(NAME)

bibliography: pdf
	$(BIB_COMPILER) $(BASENAME)

bibliography_pdf: bibliography
	$(LATEX_COMPILER) $(LATEX_FLAGS) $(NAME)
	$(LATEX_COMPILER) $(LATEX_FLAGS) $(NAME)

glossaries: pdf
	$(GLOSSARIES_COMPILER) $(BASENAME)

glossaries_pdf: glossaries
	$(LATEX_COMPILER) $(LATEX_FLAGS) $(NAME)

build: pdf glossaries bibliography_pdf

clean:
	sh clean.sh
