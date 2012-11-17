index.js: foresight.min.js
	@cp foresight.min.js index.js

build: components index.js
	@component build --dev

components: component.json
	@component install --dev

clean:
	rm -rf build components template.js index.js

.PHONY: clean
