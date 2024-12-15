use "lib:gtk-4"
use "gobject"
use "../Widget"
use "gio"
//use "../Builder"

use @printf[U32](fmt: Pointer[U8] tag, ...)
use @gtk_window_new[GObjectStruct]()
use @gtk_window_set_interactive_debugging[None](enable: I32)
use @gtk_window_set_child[None](gobj: GObjectStruct tag, child: GObjectStruct tag)

class GtkWindow is GtkWindowInterface
  var ptr: GObjectStruct

  new create() =>
    ptr = @gtk_window_new()
    ref_sink()

  fun ref get_ptr(): GObjectStruct => ptr


/*
  new new_from_builder(gbuilder: GtkBuilder, str: String val) ? =>
    ptr = gbuilder.get_object(str)?
    ref_sink()

*/
  fun _final() =>
    @printf("GtkWindow._final() called\n".cstring())
    GObject.unref(ptr)



interface GtkWindowInterface is GtkWidgetInterface
  fun ref set_child(gobj: GtkWidgetInterface) =>
    GtkWindows.set_child(get_ptr(), gobj.get_ptr())

  fun set_interactive_debugging(value: Bool) =>
    GtkWindows.set_interactive_debugging(value)



primitive GtkWindows
  fun set_child(window: GObjectStruct tag, child: GObjectStruct tag) =>
    @gtk_window_set_child(window, child)

  fun set_interactive_debugging(enable: Bool) =>
    if (enable) then
      @gtk_window_set_interactive_debugging(1)
    else
      @gtk_window_set_interactive_debugging(0)
    end

