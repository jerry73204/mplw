MPL_FILTER=mpl
MPL_PKG=$(MPL_FILTER).zip
ASCIIDOC_FILTER= asciidoc --filter

all: $(MPL_PKG)

install: $(MPL_PKG)
	$(ASCIIDOC_FILTER) install $(MPL_PKG)

clean:
	rm -f $(MPL_PKG)

uninstall:
	$(ASCIIDOC_FILTER) remove $(MPL_FILTER)

$(MPL_PKG):
	$(ASCIIDOC_FILTER) build $(MPL_PKG) .
