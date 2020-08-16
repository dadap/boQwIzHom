zayzmey = manifest.json poj.html poj.js nawz.js
zayzmey_jombeHbogh = $(addprefix jombeH/,$(zayzmey))

Hoch: $(zayzmey_jombeHbogh)

.PHONY: Hoch

jombeH/%: % jombeH/
	cp $< $@

jombeH/:
	mkdir -p $@
