VERSION 0.7
FROM pandoc/latex:3
WORKDIR /cv_build

BUILD_PDF:
	COMMAND
    ARG file='mohamedlegheraba_fr'
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
	DO +BUILD_PDF --file='mohamedlegheraba_fr'
	DO +BUILD_PDF --file='mohamedlegheraba_en'

build-fr-onepage:
	DO +BUILD_PDF --file='mohamedlegheraba_fr_onepage'

build-en-onepage:
	DO +BUILD_PDF --file='mohamedlegheraba_en_onepage'

build-one-page:
	DO +BUILD_PDF --file='mohamedlegheraba_fr_onepage'
	DO +BUILD_PDF --file='mohamedlegheraba_en_onepage'

build:
	DO +BUILD_PDF --file='mohamedlegheraba_fr'
	DO +BUILD_PDF --file='mohamedlegheraba_en'
	DO +BUILD_PDF --file='mohamedlegheraba_fr_onepage'
	DO +BUILD_PDF --file='mohamedlegheraba_en_onepage'
	
