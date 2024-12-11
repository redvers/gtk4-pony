all: gtk_genuse

castxml_gtk:
	castxml --castxml-output=1 /usr/include/gtk-4.0/gtk/gtk.h  -I/usr/include/gtk-4.0/ -I/usr/include/glib-2.0/ -I/usr/include/glib-2.0/glib -I/usr/lib/x86_64-linux-gnu/glib-2.0/include/ -I/usr/include/cairo/ -I/usr/include/pango-1.0/ -I /usr/include/harfbuzz/ -I /usr/include/gdk-pixbuf-2.0/ -I /usr/include/graphene-1.0/ -I /usr/lib/x86_64-linux-gnu/graphene-1.0/include/

castxml_webkit2:
	castxml --castxml-output=1 /usr/include/webkitgtk-6.0/webkit/webkit.h -I/usr/include/webkitgtk-6.0/ -I /usr/include/libsoup-3.0/ -I/usr/include/gtk-4.0/ -I/usr/include/glib-2.0/ -I/usr/include/glib-2.0/glib -I/usr/lib/x86_64-linux-gnu/glib-2.0/include/ -I/usr/include/cairo/ -I/usr/include/pango-1.0/ -I /usr/include/harfbuzz/ -I /usr/include/gdk-pixbuf-2.0/ -I /usr/include/graphene-1.0/ -I /usr/lib/x86_64-linux-gnu/graphene-1.0/include/

castxml_vte:
	castxml --castxml-output=1 /usr/include/vte-2.91-gtk4/vte/vte.h -I/usr/include/webkitgtk-6.0/ -I /usr/include/libsoup-3.0/ -I/usr/include/gtk-4.0/ -I/usr/include/glib-2.0/ -I/usr/include/glib-2.0/glib -I/usr/lib/x86_64-linux-gnu/glib-2.0/include/ -I/usr/include/cairo/ -I/usr/include/pango-1.0/ -I /usr/include/harfbuzz/ -I /usr/include/gdk-pixbuf-2.0/ -I /usr/include/graphene-1.0/ -I /usr/lib/x86_64-linux-gnu/graphene-1.0/include/ -I /usr/include/vte-2.91-gtk4/

gtk_castxml2pony_use:
	../../castxml2pony/castxml2pony -x gtk.xml -u `grep File gtk.xml  | grep '/gtk-4.0/' | grep -v depre | cut -d'"' -f2 | tr '\n' ' '`
	mkdir -p Gtk4
	mv use.xml usetypes.xml renderuse.xml Gtk4

webkit_castxml2pony_use:
	../../castxml2pony/castxml2pony -x webkit.xml -u `grep File webkit.xml | grep webkit | grep -v depre | cut -d'"' -f2 | tr '\n' ' '`
	mkdir -p Webkit
	mv use.xml usetypes.xml renderuse.xml Webkit

vte_castxml2pony_use:
	../../castxml2pony/castxml2pony -x vte.xml -u `grep File vte.xml | grep vte | grep -v depre | cut -d'"' -f2 | tr '\n' ' '`
	mkdir -p Vte
	mv use.xml usetypes.xml renderuse.xml Vte

gtk_castxml2pony_structs:
	../../castxml2pony/castxml2pony -x gtk.xml -S
	mkdir -p Gtk4
	mv renderstructs.xml structs.xml types.xml Gtk4

glib_castxml2pony_use:
	../../castxml2pony/castxml2pony -x gtk.xml -u `grep File gtk.xml  | grep '/glib-2.0/' | grep -v depre | cut -d'"' -f2 | tr '\n' ' '`
	mkdir -p GLib
	mv use.xml usetypes.xml renderuse.xml GLib

gtk_genuse:
	java -jar /usr/share/java/Saxon-HE.jar -xi Gtk4/use.xml makeuse.xsl

webkit_genuse:
	java -jar /usr/share/java/Saxon-HE.jar -xi Webkit/use.xml makeuse.xsl

gtk_genstruct:
	java -jar /usr/share/java/Saxon-HE.jar -xi Gtk4/structs.xml makestruct.xsl

glib_genuse:
	java -jar /usr/share/java/Saxon-HE.jar -xi GLib/use.xml makeuse.xsl

clean_use:
	rm -rf uses/
