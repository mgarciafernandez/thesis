exec:
	pdflatex main.tex
	biber main
	pdflatex main.tex
	pdflatex main.tex
	pdflatex main.tex

clean:
	rm -rf main.bbl
	rm -rf main.bcf
	rm -rf main.aux
	rm -rf main.blg
	rm -rf main.ptc
	rm -rf main.toc
	rm -rf main.run.xml
	rm -rf main.pdf
	rm -rf main.dvi
	rm -rf main.log
	rm -rf main_resized.pdf

resize:
	pdfjam --outfile main_resized.pdf --paper a5paper main.pdf
