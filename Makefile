
all: chicken-wings-oven-baked.html chicken-wings-oven-baked.pdf \
	fluffy-pancakes.html fluffy-pancakes.pdf

%.html : %.txt
	asciidoc -n -a toc -a icons -a iconsdir=./images/icons $<

%.pdf : %.txt
	a2x -fpdf -L $<

