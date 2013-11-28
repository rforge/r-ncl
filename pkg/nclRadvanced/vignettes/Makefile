## $* = filename without extension
## $@ = the output file
## $< = the input file

.SUFFIXES: .tex .pdf .Rnw .R


INCLUDES = practical1 practical2 solutions1 solutions2
TEX = $(INCLUDES:=.tex) 
RFILES = $(INCLUDES:=.R)
RNWFILES = $(INCLUDES:=.Rnw)
PDFFILES = $(INCLUDES:=.pdf)

force:
	cp -v practical1.Rnw solutions1.Rnw
	cp -v practical2.Rnw solutions2.Rnw
	make all

all: $(PDFFILES)


commit: 
	make clean
	make force
	mv $(PDFFILES) ../inst/doc/
	svn commit ../


view: all

.Rnw.pdf:
	Rscript -e "require(knitr); knit('$*.Rnw')"
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

