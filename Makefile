build:
	./src/synaptics.sh
clean:
	./clean.sh
build-deb:
	./build-deb.sh
lint-deb: build-deb
	lintian ./synaptics.deb
full-install:
	./full-install.sh
full-clean:
	./full-clean.sh