NAME=proj
VLNA_OPTS = -l -m -n -v KkSsVvZzOoUuAaIi

ALL: $(NAME).pdf


$(NAME).pdf: clean full
	make rmtmp

full:
	#vlna $(VLNA_OPTS) $(CONTENT).tex
	pdflatex --enable-write18 -draftmode $(NAME).tex
	bibtex $(NAME)
	pdflatex -draftmode $(NAME).tex
	pdflatex $(NAME).tex


quick:
	pdflatex $(NAME).tex

clean: rmtmp
	rm -f $(NAME).pdf

rmtmp:
	rm -f $(NAME).out $(NAME).toc $(NAME).dvi $(NAME).aux $(NAME).log $(NAME).ps $(NAME).nav $(NAME).snm $(NAME).te~ $(NAME).bbl $(NAME).blg $(NAME).tdo logo.log logo-eps-converted-to.pdf
