
# Recompiles the latex not the bib
all: pdf

# Makes everything from scratch
full: bib spdf

# Builds the bib
bib: pdf
	bibtex thesis.aux

pdf:
	pdflatex thesis.tex

spdf:
	pdflatex thesis.tex
	pdflatex thesis.tex

clean:
	rm -f *.blg *.bbl *.toc *.lot *.lof *.aux *.log thesis.pdf

