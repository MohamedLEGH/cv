CV_FR_ONE = mohamedlegheraba_fr_onepage
CV_EN_ONE = mohamedlegheraba_en_onepage
CV_FR = mohamedlegheraba_fr
CV_EN = mohamedlegheraba_en

all: fr en

pdf: pdf_fr pdf_en

fr: pdf_fr
en: pdf_en

pdf_fr: build/$(CV_FR).pdf build/$(CV_FR_ONE).pdf
pdf_en: build/$(CV_EN).pdf build/$(CV_EN_ONE).pdf

build/$(CV_FR_ONE).pdf: $(CV_FR_ONE).tex
	pdflatex -output-directory build/ $(CV_FR_ONE).tex

build/$(CV_FR).pdf: $(CV_FR).tex
	pdflatex -output-directory build/ $(CV_FR).tex

build/$(CV_EN_ONE).pdf: $(CV_EN_ONE).tex
	pdflatex -output-directory build/ $(CV_EN_ONE).tex

build/$(CV_EN).pdf: $(CV_EN).tex
	pdflatex -output-directory build/ $(CV_EN).tex

.PHONY: clean
clean:
	rm -vrf build/*