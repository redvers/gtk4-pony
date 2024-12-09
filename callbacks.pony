/*
use "GObject/Object"
use "Gtk"
use "Gtk/Button"

use @g_object_get_data[Any tag](gobj: Pointer[GObject] tag, key: Pointer[U8] tag)

primitive Callbacks
  fun @window_close_request[A: GtkControllerBuilder tag](gobj: Pointer[GObject] tag) => None
    @printf("In window_close_request\n".cstring())
    let t: Pointer[None] = @g_object_get_data[Pointer[None]](gobj, "pony_actor_pointer".cstring())
    if (t.is_null()) then
      @printf("I got a null, this does not spark joy\n".cstring())
      return
    end
    let me: GtkControllerBuilder tag = @g_object_get_data[GtkControllerBuilder tag](gobj, "pony_actor_pointer".cstring())
    me.close_window()


*/
