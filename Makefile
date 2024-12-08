all: build run

b: build

build:
	ponyc -d

run:
	./gtk4-pony

gresources:
	glib-compile-resources demo.gresource.xml
