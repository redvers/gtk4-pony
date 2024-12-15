use "lib:gtk-4"
use "gobject"
use "../Widget"
use "../Builder"

use @printf[U32](fmt: Pointer[U8] tag, ...)
use @gtk_scrolled_window_new[GObjectStruct]()
use @gtk_scrolled_window_set_child[None](ptr: GObjectStruct tag, child: GObjectStruct tag)

class GtkScrolledWindow is GtkWidgetInterface
  var ptr: GObjectStruct

  new create() =>
    ptr = @gtk_scrolled_window_new()
    ref_sink()

  new new_from_ptr(gobj': GObjectStruct) =>
    ptr = gobj'
    ref_sink()

  new new_from_builder(gbuilder: GtkBuilder, str: String val) ? =>
    ptr = gbuilder.get_object(str)?
    ref_sink()

  fun ref get_ptr(): GObjectStruct => ptr

  fun set_child(child: GtkWidgetInterface) =>
    @gtk_scrolled_window_set_child(ptr, child.get_ptr())

  fun _final() =>
    @printf("GtkScrolledWindow._final() called\n".cstring())
    GObject.unref(ptr)
