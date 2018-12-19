
FILE = main

all: 
	pdflatex $(FILE)
	#biber $(FILE)
	#pdflatex $(FILE)
	#pdflatex $(FILE)
	#dvips $(FILE).dvi
	#ps2pdf $(FILE).ps
	rm -f paper.aux paper.thm paper.out paper.bbl paper.blg paper.log  paper.ps
	cp $(FILE).pdf deeptir-cv.pdf
	open -a Preview deeptir-cv.pdf &
	rm $(FILE).pdf

fast:
	latex $(FILE)
	dvips $(FILE).dvi
	ps2pdf $(FILE).ps
	rm -f paper.aux paper.bbl paper.blg paper.log paper.dvi paper.ps

clean:
	rm -f paper.aux paper.bbl paper.blg paper.log paper.pdf paper.dvi paper.ps paper.out

view: all
	evince $(FILE).pdf

spell:
	aspell -c main.tex

