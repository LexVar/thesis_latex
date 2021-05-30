.PHONY: all clean

LATEX_COMPILER = pdflatex

# Default, run container and compile
all:
	# Run make commands inside docker container
	./docker-compile-tex.sh /bin/sh -c "make pdf && make clean" 

# Compile pdf document, latex compiler necessary in the caller machine
pdf: 
	htlatex main.tex html "" -dTrash "--interaction=nonstopmode"
	# $(LATEX_COMPILER) main.tex
	# bibtex main.aux
	# $(LATEX_COMPILER) main.tex istulthesis.cls
	# $(LATEX_COMPILER) main.tex istulthesis.cls

clean:
	rm *.bbl *.blg *.fls *.dvi *.mlt* *.mtc* *.maf *.loa *.aux *.loc *.lof *.log *.lol *.lot *.mlf* *.out *.soc *.toc *.fdb_latexmk
