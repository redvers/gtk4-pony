use "lib:gtk-4"
use "gobject"
use "../Widget"
use "../Builder"

use @printf[U32](fmt: Pointer[U8] tag, ...)
use @gtk_button_new[NullablePointer[GObjectS]]()

class GtkButton is GtkWidgetInterface
  var ptr: NullablePointer[GObjectS]

  new create()? =>
    ptr = @gtk_button_new()
    if (ptr.is_none()) then error end
    ref_sink()

  new new_from_ptr(gobj': NullablePointer[GObjectS]) ? =>
    ptr = gobj'
    if (ptr.is_none()) then error end
    @printf("GtkButton successfully created\n".cstring())
    ref_sink()

  new new_from_builder(gbuilder: GtkBuilder, str: String val) ? =>
    ptr = gbuilder.get_object(str)?
    @printf("GtkButton successfully created\n".cstring())
    ref_sink()

  fun ref get_ptr(): NullablePointer[GObjectS] => ptr

  fun _final() =>
    @printf("GtkButton._final() called\n".cstring())
    GObject.unref(ptr)
//    @g_object_unref(ptr)
