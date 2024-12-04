use "lib:gtk-4"
use @gtk_init[None]()

primitive Gtk
  fun init() =>
    @gtk_init()
