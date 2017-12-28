IPKG=package.ipkg
PACKAGE=idr-utils
SOURCES=$(shell find src/ -name "*.idr")

all: build

build: build/ibc/

install: build
	idris --install $(IPKG)

repl:
	EDITOR=vim idris --repl $(IPKG)

build/ibc/: $(SOURCES) | build/
	idris --build $(IPKG)

build/:
	mkdir -p build/

check: $(SOURCES)
	idris --checkpkg $(IPKG)

test: $(SOURCES)
	idris --testpkg $(IPKG)

doc: $(SOURCES)
	idris --mkdoc $(IPKG)

clean:
	idris --clean $(IPKG)
	rm -rf build/
	rm -rf `find src/ -name *.ibc`
	rm -rf $(PACKAGE)_doc/
