all: build/mohamedlegherabafr.pdf

build/mohamedlegherabafr.pdf: mohamedlegherabafr.tex
	pdflatex -output-directory build/ mohamedlegherabafr.tex 

#make4ht -d html_build -u mohamedlegherabafr.tex #"config-file"
#mk4ht oolatex src/mohamedlegherabafr.tex


# v for verbose, r for recursive, f for force, build is pdf output, html_build is html output and !(tex) remove all except the latex file 
clean:
	rm -vrf build/* html_build/* rm mohamedlegherabafr.!(tex)
