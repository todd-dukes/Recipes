# List of recipe names (no extensions)
RECIPES := \
    air-fryer-skin-on-chicken-thighs \
    bbq-chicken-leg-quarters \
    chicken-wings-oven-baked \
    coconut-cake \
    cowboy-ribeye \
    crock-pot-chicken-taco \
    crispy-air-fried-cod \
    crispy-fried-cod \
    crock-pot-pork-chops-with-sage-gravy \
    fluffy-pancakes \
    roasted-spagheti-sauce

# Automatically generate all real targets (.html and .pdf for each recipe)
HTML_TARGETS := $(addsuffix .html,$(RECIPES))
PDF_TARGETS  := $(addsuffix .pdf,$(RECIPES))
ALL_TARGETS  := $(HTML_TARGETS) $(PDF_TARGETS)

# Default target builds everything
all: $(ALL_TARGETS)

# Pattern rule for HTML
%.html : %.txt
	asciidoctor -a icons -a iconsdir=./images/icons -o $@ $<

# Pattern rule for PDF
%.pdf : %.txt
	asciidoctor-pdf -o $@ $<

# Optional: helps during development / debugging
list:
	@echo "Recipes:"
	@echo "  $(RECIPES)"
	@echo ""
	@echo "All targets:"
	@echo "  $(ALL_TARGETS)"

.PHONY: all list

