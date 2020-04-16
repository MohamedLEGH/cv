all: output/mohamedlegherabafr.pdf

output/mohamedlegherabafr.pdf: src/mohamedlegherabafr.tex
	pdflatex -output-directory output/ src/mohamedlegherabafr.tex 
