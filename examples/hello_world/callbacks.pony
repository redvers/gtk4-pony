use "../../GObject/Object"
use "../../Gtk/Button"

primitive Callbacks
  fun @window_close_request[A: GtkController tag](gobj: Pointer[GObject] tag, me: A) => None
    me.close_window()


