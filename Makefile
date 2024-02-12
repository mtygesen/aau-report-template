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

OTHER = *~ *.aux *.dvi *.toc *.blg *.gz *.out *.thm *.ps *.idx *.ilg *.ind *.run.xml *blx.bib *.tdo *.bbl
CLEAN = rm -f $(OTHER)
ARGS = -synctex=1 -interaction=nonstopmode

# Compile pdf
pdflatex: $(MAIN).tex
	$(CLEAN)
	pdflatex $(ARGS) $(MAIN).tex 
	bibtex $(MAIN).aux
	pdflatex $(ARGS) $(MAIN).tex
	pdflatex $(ARGS) $(MAIN).tex
	$(CLEAN)

# Clean auxiliary files	
clean:
	$(CLEAN)
