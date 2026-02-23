# List of recipe names (no extensions)
RECIPES := \
    air-fryer-skin-on-chicken-thighs \
    bbq-chicken-leg-quarters \
    biscuits \
    chicken-wings-oven-baked \
    coconut-cake \
    cowboy-ribeye \
    crock-pot-chicken-taco \
    crispy-air-fried-cod \
    crispy-fried-cod \
    crock-pot-pork-chops-with-sage-gravy \
    fluffy-pancakes \
    fluffy-whole-wheat-pancakes \
    hamburger-chili \
    roasted-spagheti-sauce \
    sourdough-buns \
    sourdough-whole-wheat-pullman-loaf

# Automatically generate all real targets (.html and .pdf for each recipe)
HTML_TARGETS := $(addsuffix .html,$(RECIPES))
PDF_TARGETS  := $(addsuffix .pdf,$(RECIPES))
ALL_TARGETS  := $(HTML_TARGETS) $(PDF_TARGETS)

# Default target builds everything
all: $(ALL_TARGETS)

# Pattern rule for HTML
%.html : %.adoc
	asciidoctor -a icons -a iconsdir=./images/icons -o $@ $<

# Pattern rule for PDF
%.pdf : %.adoc
	asciidoctor-pdf -a pdf-page-size=Letter -o $@ $<

# Optional: helps during development / debugging
list:
	@echo "Recipes:"
	@echo "  $(RECIPES)"
	@echo ""
	@echo "All targets:"
	@echo "  $(ALL_TARGETS)"

.PHONY: all list

