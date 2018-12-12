all: teachingStatementWWU.pdf

TEX_FILES = teachingStatementWWU.tex

force:
	rm -f teachingStatement-slides.pdf
	make all

teachingStatementWWU.pdf: teachingStatementWWU.tex
	pdflatex teachingStatementWWU.tex

#The coverletter-slides.pdf file contains work on 
teachingStatement-slides.pdf: teachingStatement-slides.tex
	pdflatex teachingStatement-slides.tex

cleanSlides:
	rm -f teachingStatement-slides.aux teachingStatement-slides.toc teachingStatement-slides.log teachingStatement-slides.pdf

cleanTS:
	rm -f teachingStatementWWU.aux teachingStatementWWU.toc teachingStatementWWU.log teachingStatementWWU.pdf

clean:
	rm -f *.aux *.toc *.log *.bbl *.blg *.out teachingStatement-slides.pdf teachingStatementWWU.pdf

realclean:
	rm -f *.aux *.toc *.log *.bbl *.blg teachingStatement-slides.pdf teachingStatementWWU.pdf
