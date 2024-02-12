##################################################################
# Makefile for LaTeX
##################################################################
# Commands:
##################################################################
# make
# make clean
##################################################################

# Name of main file without extension to compile
MAIN = master

OTHER = *~ *.aux *.dvi *.toc *.bbl *.blg *.gz *.out *.thm *.ps *.idx *.ilg *.ind *.run.xml *blx.bib *.tdo
CLEAN = rm -f $(OTHER)

# Compile pdf
pdflatex: $(MAIN).tex
	$(CLEAN)
	pdflatex --synctex=1 $(MAIN).tex
	bibtex $(MAIN).aux
	pdflatex --synctex=1 $(MAIN).tex
	pdflatex --synctex=1 $(MAIN).tex
	$(CLEAN)

# Clean auxiliary files	
clean:
	$(CLEAN)
