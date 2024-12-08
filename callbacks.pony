use "GObject/Object"
use "Gtk/Button"

primitive Callbacks
  fun @window_close_request[A: GtkControllerBuilder tag](gobj: Pointer[GObject] tag, me: A) => None
    me.close_window()



