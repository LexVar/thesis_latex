all:
	# Run make commands inside docker container
	./docker-compile-tex.sh /bin/sh -c "make main" 
main: 
	pdflatex main.tex
	bibtex main.aux
	pdflatex main.tex istulthesis.cls
	pdflatex main.tex istulthesis.cls
	make clean

clean:
	rm *.bbl *.blg *.fls *.dvi *.mlt* *.mtc* *.maf *.loa *.aux *.loc *.lof *.log *.lol *.lot *.mlf* *.out *.soc *.toc *.fdb_latexmk
