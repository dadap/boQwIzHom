zayzmey = manifest.json poj.html poj.js nawz.js
zayzmey_jombeHbogh = $(addprefix jombeH/,$(zayzmey))

bItlhmoHwIz = jombeH/browser-polyfill.js
bItlhmoHwIz_zayzmey = $(addprefix webextension-polyfill/, \
	api-metadata.json package.json src/browser-polyfill.js)

Hoch: $(zayzmey_jombeHbogh) $(bItlhmoHwIz)

.PHONY: Hoch

jombeH/%: % jombeH/
	cp $< $@

jombeH/:
	mkdir -p $@

$(bItlhmoHwIz): webextension-polyfill/dist/browser-polyfill.js jombeH/
	cp $< $@

webextension-polyfill/dist/browser-polyfill.js: $(bItlhmoHwIz_zayzmey)
	cd webextension-polyfill; npm install
