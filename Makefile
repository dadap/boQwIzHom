zayzmey = manifest.json poj.html poj.js nawz.js poj.css
zayzmey_jombeHbogh = $(addprefix jombeH/,$(zayzmey))

bItlhmoHwIz = jombeH/browser-polyfill.js
bItlhmoHwIz_zayzmey = $(addprefix webextension-polyfill/, \
	api-metadata.json package.json src/browser-polyfill.js)

Hoch: $(zayzmey_jombeHbogh) $(bItlhmoHwIz) jombeH/qawHaq.js

yISayzmoH:
	git clean -Xfd
	$(RM) webextension-polyfill/package-lock.json

yISayzmoHchuz:
	git submodule foreach --recursive git clean -Xfd

.PHONY: Hoch yISayzmoH yISayzmoH

jombeH/%: % jombeH/
	cp $< $@

jombeH/:
	mkdir -p $@

$(bItlhmoHwIz): webextension-polyfill/dist/browser-polyfill.js jombeH/
	cp $< $@

webextension-polyfill/dist/browser-polyfill.js: $(bItlhmoHwIz_zayzmey)
	cd webextension-polyfill; npm install

jombeH/qawHaq.js: klingon-assistant-data/* jombeH/
	echo 'var q = ' > $@
	klingon-assistant-data/xml2json.py >> $@
	echo ';' >> $@
