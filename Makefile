all: build install

fresh:
	./fresh.sh

install: 
	echo install
	
build: 
	echo build
clean:
	rm -rf debian/libjs-bootstrap-switch
	rm -rf debian/*.substvars debian/*.log debian/*.debhelper debian/files debian/debhelper-build-stamp

deb: fresh
	./changelog.sh
	debuild -i -us -uc -b

.PHONY : install
	