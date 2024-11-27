/*
  Source: /usr/include/gtk-4.0/gtk/gtkmain.h:56
  Original Name: gtk_init/usr/include/gtk-4.0/gtk/gtkmain.h:56

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
use "lib:gtk-4"
use @gtk_init[None]()

primitive Gtk
  fun init() =>
    @gtk_init()
