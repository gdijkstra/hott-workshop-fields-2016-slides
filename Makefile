TEX=slides.tex
TEXMAIN=$(basename $(TEX))
PDF=$(subst .tex,.pdf,$(TEX))
LOG=$(subst .tex,.log,$(TEX))

default : $(PDF)

$(PDF) : $(TEX) macros.tex
	pdflatex -halt-on-error $(TEX)
	pdflatex -halt-on-error $(TEX)

clean :
	rm -f *.aux *.log *.nav *.out *.ptb *.toc *.snm *.synctex.gz *.bbl *.blg $(PDF)
