NAME=proj
VLNA_OPTS = -l -m -n -v KkSsVvZzOoUuAaIi

ALL: $(NAME).pdf


$(NAME).pdf: clean
	#vlna $(VLNA_OPTS) $(CONTENT).tex
	pdflatex --enable-write18 $(NAME).tex
	bibtex $(NAME)
	pdflatex $(NAME).tex
	pdflatex $(NAME).tex
	make rmtmp

clean: rmtmp
	rm -f $(NAME).pdf

rmtmp:
	rm -f $(NAME).out $(NAME).toc $(NAME).dvi $(NAME).aux $(NAME).log $(NAME).ps $(NAME).nav $(NAME).snm $(NAME).te~ $(NAME).bbl $(NAME).blg logo.log logo-eps-converted-to.pdf
