all: clean paper.pdf

paper.aux: paper.tex paper.bib
	pdflatex paper.tex

create_bib: paper.aux
	bibtex paper

paper.pdf: create_bib paper.tex
	pdflatex paper.tex
	pdflatex paper.tex

clean:
	rm -f paper.pdf