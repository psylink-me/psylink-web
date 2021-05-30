.PHONY: install build watch

build:
	hugo --cleanDestinationDir

watch:
	hugo -w --cleanDestinationDir

install:
	hugo --cleanDestinationDir --environment production
	rm public/tags/index.xml public/meta.html || true
	rmdir public/tags || true
	rsync -ruv --del public/ psylink:/home/psylink/html/
	hugo --cleanDestinationDir
