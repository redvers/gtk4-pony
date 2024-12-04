use "GObject/Object"

primitive Callbacks
  fun @window_close_request[A: GtkController](gobj: Pointer[GObject] tag, me: A) => None
    me.close_window()


