

KINDLEGENPATH=.

all: NorthForSun.pdf NorthForSun.mobi



%.tex: %.txt 
	sed -f totex.sed $^ > $@

%.html: %.txt
	cat -s $^ | sed -f tohtml.sed  | sed -f tohtml2.sed > $@


front.html: front.htmlstart dedication.html front.htmlend 
	cat $^ > front.html

NorthForSun.html: NorthForSun.htmlstart manuscript.html acknowledgements.html author.html NorthForSun.htmlend
	cat $^ > NorthForSun.html 

NorthForSun.epub: NorthForSun.html toc.html toc.ncx NorthForSun.opf cover.jpg author.jpg style.css front.html 
	zip $@ $^

NorthForSun.mobi: NorthForSun.epub 
	${KINDLEGENPATH}/kindlegen NorthForSun.epub 

NorthForSun.pdf: NorthForSun.tex manuscript.tex acknowledgements.tex dedication.tex author.tex 
	pdflatex NorthForSun.tex
	pdflatex NorthForSun.tex

