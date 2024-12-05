use "lib:gtk-4"
use "../../GObject/Object"
use "../Widget"
use "../Builder"

use @printf[U32](fmt: Pointer[U8] tag, ...)
use @gtk_button_new[Pointer[GObject] tag]()
use @g_object_unref[None](gobj: Pointer[GObject] tag)
use @g_object_ref_sink[Pointer[GObject] tag](gobj: Pointer[GObject] tag)
use @g_object_ref[Pointer[GObject] tag](gobj: Pointer[GObject] tag)

class GtkButton is GtkWidgetInterface
  var ptr: Pointer[GObject] tag

  new create() =>
    ptr = @gtk_button_new()
    @g_object_ref_sink(ptr)

  new new_from_ptr(gobj': Pointer[GObject] tag) ? =>
    ptr = gobj'
    if (ptr.is_null()) then
      error
    else
      @printf("GtkButton successfully created\n".cstring())
      @g_object_ref(ptr)
    end

  new new_from_builder(gbuilder: GtkBuilder, str: String val) ? =>
    ptr = gbuilder.get_object(str)
    if (ptr.is_null()) then
      error
    else
      @printf("GtkButton successfully created\n".cstring())
      @g_object_ref(ptr)
    end

  fun ref get_ptr(): Pointer[GObject] tag => ptr

  fun _final() =>
    @printf("GtkButton._final() called\n".cstring())
    @g_object_unref(ptr)
