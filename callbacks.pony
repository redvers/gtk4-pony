use "GObject/Object"

primitive Callbacks
  fun @window_close_request[A: GtkControllerBuilder tag](gobj: Pointer[GObject] tag, me: A) => None
    @printf("In window_close_request()\n".cstring())
//    me.close_window()



