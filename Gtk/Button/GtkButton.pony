use "lib:gtk-4"
use "../../GLib/Object"
use "../Widget"
use "../Builder"

use @printf[U32](fmt: Pointer[U8] tag, ...)
use @gtk_button_new[Pointer[GObject] tag]()

class GtkButton is GtkWidgetInterface
  var ptr: Pointer[GObject] tag

  new create()? =>
    ptr = @gtk_button_new()
    if (ptr.is_null()) then error end
    ref_sink()

  new new_from_ptr(gobj': Pointer[GObject] tag) ? =>
    ptr = gobj'
    if (ptr.is_null()) then error end
    @printf("GtkButton successfully created\n".cstring())
    ref_sink()

  new new_from_builder(gbuilder: GtkBuilder, str: String val) ? =>
    ptr = gbuilder.get_object(str)?
    @printf("GtkButton successfully created\n".cstring())
    ref_sink()

  fun ref get_ptr(): Pointer[GObject] tag => ptr

  fun _final() =>
    @printf("GtkButton._final() called\n".cstring())
    GObject.unref(ptr)
//    @g_object_unref(ptr)
