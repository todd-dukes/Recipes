
all: chicken-wings-oven-baked.html chicken-wings-oven-baked.pdf \
     crispy-fried-cod.html crispy-fried-cod.pdf \
	fluffy-pancakes.html fluffy-pancakes.pdf

%.html : %.txt
	asciidoctor -a icons -a iconsdir=./images/icons -o $@ $<

%.pdf : %.txt
	asciidoctor-pdf -o $@ $<

