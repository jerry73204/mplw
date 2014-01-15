MPL_FILTER=mpl
MPL_PKG=$(HOME)/$(MPL_FILTER).zip
ASCIIDOC_FILTER= asciidoc --filter

all:
	$(ASCIIDOC_FILTER) build $(MPL_PKG) .

install: clean all
	$(ASCIIDOC_FILTER) install $(MPL_PKG)

clean:
	$(ASCIIDOC_FILTER) remove $(MPL_FILTER)
