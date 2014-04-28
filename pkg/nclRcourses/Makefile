## $* = filename without extension
## $@ = the output file
## $< = the input file

.SUFFIXES: .tex .pdf .Snw .R

PKG = nclRcourses
DIR = vignettes

PRACS = practical2
SOLS = solutions2
OTHER = practical1 plotting 
ALL =  $(PRACS)  $(SOLS) $(OTHER)

SOLSPDF = $(SOLS:=.pdf)
PRACSPDF = $(PRACS:=.pdf)
ALLPDF = $(ALL:=.pdf)

PRACSRNW =  $(PRACS:=.Snw)
SOLSRNW =  $(SOLS:=.Snw)
OTHERRNW =  $(OTHER:=.Snw)

.PHONY: force sols all clean commit cleaner

force: 
	make -C $(DIR) -f ../Makefile all

all: $(ALLPDF)
	$(MAKE) -f ../Makefile solutions
	$(MAKE) -f ../Makefile sols

solutions: $(PRACSRNW) $(OTHERRNW)
	## Copy practical file to solutions
	$(foreach var, \
		$(PRACSRNW), \
		cp $(var) $(subst practical, solutions, $(var);))
	$(foreach var, \
		$(SOLSRNW), \
		sed -i "5s/.*/results='show';echo=TRUE/" $(var);)

sols: $(ALLPDF)
	cp $(ALLPDF) ../../../www/$(PKG)/
	scp $(ALLPDF) linux.mas.ncl.ac.uk:~/public_html/Rcourse/$(PKG)/

commit: 
	make force
	svn commit ../$(PKG) ../../www/$(PKG)/

view: 
	make force
	acroread ../../www/$(PKG)/*.pdf

build:
	make cleaner
	cd ../ && R CMD build $(PKG)

check:
	make build
	cd ../ && R CMD check --as-cran $(PKG)_*.tar.gz

install: 
	make build
	cd ../ && R CMD INSTALL $(PKG)_*.tar.gz

.Snw.pdf:
	sed -i "1s/.*/%\\\VignetteIndexEntry{$*}/" $*.Snw
	Rscript  -e "require(knitr); knit('$*.Snw', output='$*.tex')"
	pdflatex $*.tex
	pdflatex $*.tex

clean:
	cd $(DIR) && rm -fvr knitr_figure && \
	rm -fv $(ALLPDF)  *.tex *.synctex.gz \
		*.aux *.dvi *.log *.toc *.bak *~ *.blg *.bbl *.lot *.lof \
		 *.nav *.snm *.out *.pyc \#*\# _region_* _tmp.* *.vrb \
		Rplots.pdf example.RData d.csv.gz mygraph.* \
		knitr_* knitr.sty .Rhistory ex.data

cleaner:
	make clean
	cd $(DIR) && rm -fvr auto/
	cd ../ && rm -fvr $(PKG).Rcheck $(PKG)_*.tar.gz

