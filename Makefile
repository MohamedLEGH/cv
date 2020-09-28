CV_FR = mohamedlegheraba_fr
CV_EN = mohamedlegheraba_en

all: fr en

pdf: pdf_fr pdf_en
html: html_fr html_en
docx: docx_fr docx_en

fr: pdf_fr html_fr docx_fr
en: pdf_en html_en docx_en

pdf_fr: build/$(CV_FR).pdf
html_fr: html_build/$(CV_FR).html
docx_fr: word_build/$(CV_FR).docx

pdf_en: build/$(CV_EN).pdf
html_en: html_build/$(CV_EN).html
docx_en: word_build/$(CV_EN).docx

build/$(CV_FR).pdf: $(CV_FR).tex
	pdflatex -output-directory build/ $(CV_FR).tex

html_build/$(CV_FR).html: $(CV_FR).tex
	make4ht -d html_build -u $(CV_FR).tex #"config-file"
	rm -vrf $(CV_FR).4* $(CV_FR).l* #rm mohamedlegherabafr.!(tex)
	rm -vrf $(addprefix $(CV_FR),.aux .css .dvi .html .idv .tmp .xref)
word_build/$(CV_FR).docx: $(CV_FR).tex
	make4ht -f odt -d word_build -u $(CV_FR).tex
	make4ht -f odt -d word_build -u $(CV_FR).tex # need to do it twice, I don't know why
	libreoffice --headless --convert-to docx --outdir word_build/ word_build/$(CV_FR).odt
	rm -vrf $(CV_FR)-* *.4og $(CV_FR).4* $(CV_FR).l* #rm mohamedlegherabafr.!(tex)
	rm -vrf $(addprefix $(CV_FR),.aux .dvi .idv .odt .tmp .xref)

build/$(CV_EN).pdf: $(CV_EN).tex
	pdflatex -output-directory build/ $(CV_EN).tex

html_build/$(CV_EN).html: $(CV_EN).tex
	make4ht -d html_build -u $(CV_EN).tex #"config-file"
	rm -vrf $(CV_EN).4* $(CV_EN).l* #rm mohamedlegherabafr.!(tex)
	rm -vrf $(addprefix $(CV_EN),.aux .css .dvi .html .idv .tmp .xref)
word_build/$(CV_EN).docx: $(CV_EN).tex
	make4ht -f odt -d word_build -u $(CV_EN).tex
	make4ht -f odt -d word_build -u $(CV_EN).tex # need to do it twice, I don't know why
	libreoffice --headless --convert-to docx --outdir word_build/ word_build/$(CV_EN).odt
	rm -vrf $(CV_EN)-* *.4og $(CV_EN).4* $(CV_EN).l* #rm mohamedlegherabafr.!(tex)
	rm -vrf $(addprefix $(CV_EN),.aux .dvi .idv .odt .tmp .xref)

# tlmgr install #(for package install)

# v for verbose, r for recursive, f for force, build is pdf output, html_build is html output and !(tex) remove all except the latex file (not working right now)
.PHONY: clean
clean:
	rm -vrf build/* html_build/* word_build/* *.4og $(CV_FR)-* $(CV_FR).4* $(CV_FR).l* $(CV_EN)-* $(CV_EN).4* $(CV_EN).l* #rm mohamedlegherabafr.!(tex)
	rm -vrf $(addprefix $(CV_FR),.aux .css .dvi .html .idv .odt .tmp .xref)
	rm -vrf $(addprefix $(CV_EN),.aux .css .dvi .html .idv .odt .tmp .xref)
