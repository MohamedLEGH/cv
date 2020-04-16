all: output_pdf/mohamedlegherabafr.pdf

output_pdf/mohamedlegherabafr.pdf: src/mohamedlegherabafr.tex
	pdflatex -output-directory output_pdf/ src/mohamedlegherabafr.tex 

#htlatex src/mohamedlegherabafr.tex "config-file,xhtml,html5,charset=utf-8" " -cmozhtf -utf8"
#mk4ht oolatex src/mohamedlegherabafr.tex

clean:
	rm -rf output_pdf/*
