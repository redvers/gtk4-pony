all: gtk_genuse

castxml:
	castxml --castxml-output=1 /usr/include/gtk-4.0/gtk/gtk.h  -I/usr/include/gtk-4.0/ -I/usr/include/glib-2.0/ -I/usr/include/glib-2.0/glib -I/usr/lib/x86_64-linux-gnu/glib-2.0/include/ -I/usr/include/cairo/ -I/usr/include/pango-1.0/ -I /usr/include/harfbuzz/ -I /usr/include/gdk-pixbuf-2.0/ -I /usr/include/graphene-1.0/ -I /usr/lib/x86_64-linux-gnu/graphene-1.0/include/

gtk_castxml2pony_use:
	../../castxml2pony/castxml2pony -x gtk.xml -u `grep File gtk.xml  | grep '/gtk-4.0/' | grep -v depre | cut -d'"' -f2 | tr '\n' ' '`
	mkdir -p Gtk4
	mv use.xml usetypes.xml renderuse.xml Gtk4

gtk_genuse: gtk_clean_use
	java -jar /usr/share/java/Saxon-HE.jar -xi Gtk4/use.xml makeuse.xsl

gtk_clean_use:
	rm -rf uses/
