all: teachingStatement.pdf

TEX_FILES = teachingStatementWWU.tex

force:
	rm -f teachingStatement-slides.pdf
	make all

teachingStatementWWU.pdf: teachingStatementWWU.tex
	pdflatex --shell-escape teachingStatementWWU.tex
	bibtex teachingStatementWWU.tex

teachingStatement.pdf: teachingStatement_NameOfUniversity_NameOfPos_VivekKale.tex
	pdflatex --shell-escape teachingStatement_NameOfUniversity_NameOfPos_VivekKale.tex
#	bibtex teachingStatement_NameOfUniversity_NameOfPos_VivekKale.tex

#The coverletter-slides.pdf file contains work on 
teachingStatement-slides.pdf: teachingStatement-slides.tex
	pdflatex teachingStatement-slides.tex

cleanSlides:
	rm -f teachingStatement-slides.aux teachingStatement-slides.toc teachingStatement-slides.log teachingStatement-slides.pdf

cleanTS:
	rm -f teachingStatementWWU.aux teachingStatementWWU.toc teachingStatementWWU.log teachingStatementWWU.pdf

clean:
	rm -f *.aux *.toc *.log *.bbl *.blg *.out teachingStatement-slides.pdf teachingStatement_NameOfUniversity_NameOfPos_VivekKale.pdf teachingStatement.pdf

realclean:
	rm -f *.aux *.toc *.log *.bbl *.blg teachingStatement-slides.pdf teachingStatementWWU.pdf teachingStatement.pdf