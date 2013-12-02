	## $* = filename without extension
## $@ = the output file
## $< = the input file

.SUFFIXES: .tex .pdf .Rnw .R

PRACTICALS = practical1 practical2
SOLUTIONS = solutions1 solutions2
INCLUDES =  $(PRACTICALS) $(SOLUTIONS) 

PDFFILES = $(INCLUDES:=.pdf)
#R_HOME = /usr/

all: $(PDFFILES)
	cp $(PDFFILES) ../inst/doc/

commit: 
	make clean
	make all
	svn commit ../

view: all
	acroread ../inst/doc/*.pdf

.Rnw.pdf:
	`$(R_HOME)/bin/Rscript  -e "require(knitr); knit('$*.Rnw')"`
#	Rscript -e "require(knitr); knit('$*.Rnw')"
	pdflatex $*.tex; pdflatex $*.tex;

clean:
	rm -fv $(PDFFILES) $(RFILES)  *.tex *.synctex.gz
	rm -fv *.aux *.dvi *.log *.toc *.bak *~ *.blg *.bbl *.lot *.lof
	rm -fv  *.nav *.snm *.out *.pyc \#*\# _region_* _tmp.* *.vrb
	rm -fv Rplots.pdf example.RData d.csv.gz mygraph.*
	rm -fvr knitr_* knitr.sty .Rhistory ex.data

cleaner:
	make clean
	rm -fvr auto/
	rm -fvr *.tar.gz *.Rcheck

