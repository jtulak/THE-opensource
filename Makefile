NAME=proj
VLNA_OPTS = -l -m -n -v KkSsVvZzOoUuAaIi
CC=xelatex

ALL: $(NAME).pdf


$(NAME).pdf: clean full
	make rmtmp

full:
	#vlna $(VLNA_OPTS) $(CONTENT).tex
	#$(CC) --enable-write18 -draftmode $(NAME).tex
	$(CC) --enable-write18  $(NAME).tex
	bibtex $(NAME)
	$(CC)  $(NAME).tex
	$(CC)  $(NAME).tex


quick:
	$(CC) $(NAME).tex

clean: rmtmp
	rm -f $(NAME).pdf

rmtmp:
	rm -f $(NAME).out $(NAME).toc $(NAME).dvi $(NAME).aux $(NAME).log $(NAME).ps $(NAME).nav $(NAME).snm $(NAME).te~ $(NAME).bbl $(NAME).blg $(NAME).tdo logo.log logo-eps-converted-to.pdf
