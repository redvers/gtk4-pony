use "lib:gtk-4"
use "../../GObject/Object"
use "../Widget"
use "../Builder"

use @printf[U32](fmt: Pointer[U8] tag, ...)
use @gtk_window_new[Pointer[GObject] tag]()
use @gtk_window_set_interactive_debugging[None](enable: I32)
use @g_object_unref[None](gobj: Pointer[GObject] tag)
use @g_object_ref[Pointer[GObject] tag](gobj: Pointer[GObject] tag)
use @gtk_window_set_child[None](gobj: Pointer[GObject] tag, child: Pointer[GObject] tag)

class GtkWindow is GtkWidgetInterface
  var ptr: Pointer[GObject] tag

  new create() =>
    ptr = @gtk_window_new()
    @g_object_ref(ptr)

  new new_from_builder(gbuilder: GtkBuilder, str: String val) ? =>
    ptr = gbuilder.get_object(str)
    if (ptr.is_null()) then
      error
    else
      @g_object_ref(ptr)
    end

  fun ref get_ptr(): Pointer[GObject] tag => ptr

  fun ref set_interactive_debugging(enable: Bool) =>
    if (enable) then
      @gtk_window_set_interactive_debugging(1)
    else
      @gtk_window_set_interactive_debugging(0)
    end

  fun ref set_child(gobj: GtkWidgetInterface) =>
    @gtk_window_set_child(ptr, gobj.get_ptr())

  fun _final() =>
    @printf("GtkWindow._final() called\n".cstring())
    @g_object_unref(ptr)
