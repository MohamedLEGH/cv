all: build/mohamedlegherabafr.pdf

build/mohamedlegherabafr.pdf: mohamedlegherabafr.tex
	pdflatex -output-directory build/ mohamedlegherabafr.tex 

#htlatex src/mohamedlegherabafr.tex "config-file,xhtml,html5,charset=utf-8" " -cmozhtf -utf8"
#mk4ht oolatex src/mohamedlegherabafr.tex

clean:
	rm -rf build/*
