all:
	@if [ "x$(JHBUILD_PREFIX)" = x ]; then \
		echo "JHBUILD_PREFIX must be set."; \
		exit 1; \
	fi

clean:
	@echo "Nothing to clean."

install: all
	sed "s|%PREFIX%|$(JHBUILD_PREFIX)|" xml/catalog.tmpl > xml/catalog
	mkdir -p $(DESTDIR)$(JHBUILD_PREFIX)/share/xml
	cp -r xml/ $(DESTDIR)$(JHBUILD_PREFIX)/share/xml
