## $* = filename without extension
## $@ = the output file
## $< = the input file

.SUFFIXES: .tex .pdf .Rnw .R

PKG = nclRadvanced
DIR = vignettes
PRACS = practical1 practical2

SOLS = solutions1 solutions2
INCLUDES =  $(PRACS)  $(SOLS) 

SOLSPDFS = $(SOLS:=.pdf)
PRACSPDFS = $(PRACS:=.pdf)
PDFFILES = $(INCLUDES:=.pdf)

#PDFFILES = $(addprefix $(DIR)/,$(INCLUDES:=.pdf))

force: 
	make -C $(DIR) -f ../Makefile all


# SOLUTIONS:  $(PRACS:=.Rnw)
# 	cp $< $(subst practical, solutions, $<)
	# cd $(DIR) && \
	# cp practical1.Rnw solutions1.Rnw 
	# cp practical2.Rnw solutions2.Rnw && \
	# sed -i "5s/.*/results='show'/" solutions1.Rnw && \
	# sed -i "5s/.*/results='show'/" solutions2.Rnw




all: $(PRACSPDFS)
	cp practical1.Rnw solutions1.Rnw
	sed -i "5s/.*/results='show';show=TRUE/" solutions1.Rnw

	cp practical2.Rnw solutions2.Rnw
	sed -i "5s/.*/results='show';show=TRUE/" solutions2.Rnw
	$(MAKE) -f ../Makefile solutions
	cp $(PRACFILES) $(SOLSPDFS) ../../../www/$(PKG)/

solutions: $(SOLSPDFS)


commit: 
	make clean
	make force
	svn commit ../ ../../www/$(PKG)/

view: 
	make force
	acroread ../../www/$(PKG)/*.pdf

.Rnw.pdf:
	sed -i "1s/.*/%\\\VignetteIndexEntry{$*}/" $*.Rnw
	Rscript  -e "require(knitr); knit('$*.Rnw', output='$*.tex')"
	pdflatex $*.tex
	pdflatex $*.tex

clean:
	cd $(DIR) && \
	rm -fv $(INCLUDES:=.pdf)  *.tex *.synctex.gz \
		*.aux *.dvi *.log *.toc *.bak *~ *.blg *.bbl *.lot *.lof \
		 *.nav *.snm *.out *.pyc \#*\# _region_* _tmp.* *.vrb \
		Rplots.pdf example.RData d.csv.gz mygraph.* \
		knitr_* knitr.sty .Rhistory ex.data

cleaner:
	make clean
	cd $(DIR) && rm -fvr auto/
	cd ../ && rm -fvr $(PKG).Rcheck $(PKG)_*.tar.gz

