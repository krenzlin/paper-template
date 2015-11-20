PROJECT=paper
TEX=pdflatex
BIBTEX=bibtex
VIEWER=evince
BUILDTEX=$(TEX) $(PROJECT).tex

.PHONY: all view clean-all clean

all:
	$(BUILDTEX)
	$(BIBTEX) $(PROJECT)
	$(BUILDTEX)
	$(BUILDTEX)

view :
	${VIEWER} ${PROJECT}.pdf

clean-all:
	rm -f *.dvi *.log *.bak *.aux *.bbl *.blg *.idx *.ps *.eps *.pdf *.toc *.out *~

clean:
	rm -f *.log *.bak *.aux *.bbl *.blg *.idx *.toc *.out *~

