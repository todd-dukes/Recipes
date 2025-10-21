
all: air-fryer-skin-on-chicken-thighs.html air-fryer-skin-on-chicken-thighs.pdf \
     chicken-wings-oven-baked.html chicken-wings-oven-baked.pdf \
     cowboy-ribeye.html cowboy-ribeye.pdf \
     crispy-air-fried-cod.html crispy-air-fried-cod.pdf \
     crispy-fried-cod.html crispy-fried-cod.pdf \
     crock-pot-pork-chops-with-sage-gravy.pdf crock-pot-pork-chops-with-sage-gravy.html \
	fluffy-pancakes.html fluffy-pancakes.pdf

%.html : %.txt
	asciidoctor -a icons -a iconsdir=./images/icons -o $@ $<

%.pdf : %.txt
	asciidoctor-pdf -o $@ $<

