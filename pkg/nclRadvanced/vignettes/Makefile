## $* = filename without extension
## $@ = the output file
## $< = the input file

.SUFFIXES: .tex .pdf .Rnw .R

INCLUDES = practical1 practical2
TEX = $(INCLUDES:=.tex) 
RFILES = $(INCLUDES:=.R)
RNWFILES = $(INCLUDES:=.Rnw)
PDFFILES = $(INCLUDES:=.pdf)

all: $(PDFFILES)

commit: 
	make clean
	make all
	mv $(PDFFILES) ../inst/doc/
	svn commit ../


view: all
	xpdf $(MAIN).pdf &

# .Rnw.R:
# 	R CMD Stangle $<

.Rnw.pdf:
	Rscript -e "require(knitr); knit('$*.Rnw')"
	pdflatex $*.tex; pdflatex $*.tex;



clean:
	rm -fv $(PDFFILES) $(TEX) $(RFILES) 
	rm -fv *.aux *.dvi *.log *.toc *.bak *~ *.blg *.bbl *.lot *.lof
	rm -fv  *.nav *.snm *.out *.pyc \#*\# _region_* _tmp.* *.vrb
	rm -fv Rplots.pdf example.RData d.csv.gz mygraph.*
	rm -fvr knitr_* knitr.sty .Rhistory

cleaner:
	make clean
	rm -fvr auto/ 

