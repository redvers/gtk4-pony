use "lib:gtk-4"
use "../../GObject/Object"
use "../Widget"
use "../Builder"

use @printf[U32](fmt: Pointer[U8] tag, ...)
use @gtk_scrolled_window_new[Pointer[GObject]]()
use @gtk_scrolled_window_set_child[None](ptr: Pointer[GObject] tag, child: Pointer[GObject] tag)

class GtkScrolledWindow is GtkWidgetInterface
  var ptr: Pointer[GObject] tag

  new create() =>
    ptr = @gtk_scrolled_window_new()
    ref_sink(ptr)

  new new_from_ptr(gobj': Pointer[GObject] tag) ? =>
    ptr = gobj'
    if (ptr.is_null()) then
      error
    else
      @printf("GtkScrolledWindow successfully created\n".cstring())
      ref_sink(ptr)
    end

  new new_from_builder(gbuilder: GtkBuilder, str: String val) ? =>
    ptr = gbuilder.get_object(str)
    if (ptr.is_null()) then
      error
    else
      @printf("GtkScrolledWindow successfully created\n".cstring())
      ref_sink(ptr)
    end

  fun ref get_ptr(): Pointer[GObject] tag => ptr

  fun set_child(child: GtkWidgetInterface) =>
    @gtk_scrolled_window_set_child(ptr, child.get_ptr())

  fun _final() =>
    @printf("GtkScrolledWindow._final() called\n".cstring())
    GObject.unref(ptr)