all: pdf html docx

pdf: build/mohamedlegherabafr.pdf
html: html_build/mohamedlegherabafr.html
docx: word_build/mohamedlegherabafr.docx

build/mohamedlegherabafr.pdf: mohamedlegherabafr.tex
	pdflatex -output-directory build/ mohamedlegherabafr.tex 

html_build/mohamedlegherabafr.html: mohamedlegherabafr.tex
	make4ht -d html_build -u mohamedlegherabafr.tex #"config-file"
	rm -vrf mohamedlegherabafr.4* mohamedlegherabafr.l* #rm mohamedlegherabafr.!(tex)
	rm -vrf $(addprefix mohamedlegherabafr,.aux .css .dvi .html .idv .tmp .xref)
word_build/mohamedlegherabafr.docx: mohamedlegherabafr.tex
	make4ht -f odt -d word_build -u mohamedlegherabafr.tex
	make4ht -f odt -d word_build -u mohamedlegherabafr.tex # need to do it twice, I don't know why
	libreoffice --headless --convert-to docx --outdir word_build/ word_build/mohamedlegherabafr.odt
	rm -vrf mohamedlegherabafr-* *.4og mohamedlegherabafr.4* mohamedlegherabafr.l* #rm mohamedlegherabafr.!(tex)
	rm -vrf $(addprefix mohamedlegherabafr,.aux .dvi .idv .odt .tmp .xref)
# tlmgr install #(for package install)

# v for verbose, r for recursive, f for force, build is pdf output, html_build is html output and !(tex) remove all except the latex file (not working right now)
.PHONY: clean
clean:
	rm -vrf build/* html_build/* word_build/* mohamedlegherabafr-* *.4og mohamedlegherabafr.4* mohamedlegherabafr.l* #rm mohamedlegherabafr.!(tex)
	rm -vrf $(addprefix mohamedlegherabafr,.aux .css .dvi .html .idv .odt .tmp .xref)
