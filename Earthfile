VERSION 0.7
FROM texlive/texlive
WORKDIR /cv_build

BUILD_PDF:
	COMMAND
	ARG file='mohamedlegheraba_fr'
	RUN tlmgr option repository http://mirror.ctan.org/systems/texlive/tlnet
	RUN tlmgr update --self && tlmgr install ragged2e footmisc enumitem
	COPY figures figures
	COPY ${file}.tex .
	RUN pdflatex ${file}.tex 
	SAVE ARTIFACT --keep-ts ${file}.pdf AS LOCAL build/${file}.pdf

build-fr-classic:
	DO +BUILD_PDF --file='mohamedlegheraba_fr'

build-en-classic:
	DO +BUILD_PDF --file='mohamedlegheraba_en'

build-classic:
	BUILD +build-fr-classic
	BUILD +build-en-classic

build-fr-onepage:
	DO +BUILD_PDF --file='mohamedlegheraba_fr_onepage'

build-en-onepage:
	DO +BUILD_PDF --file='mohamedlegheraba_en_onepage'

build-onepage:
	BUILD +build-fr-onepage
	BUILD +build-en-onepage

build:
	BUILD +build-classic
	BUILD +build-onepage	
