use "lib:gtk-4"
use "gobject"
use "../Widget"
use "../Builder"

use @printf[U32](fmt: Pointer[U8] tag, ...)
use @g_object_unref[None](gobj: GObjectStruct tag)
use @gtk_label_new_with_mnemonic[GObjectStruct](str: Pointer[U8] tag)
use @gtk_label_set_label[None](ptr: GObjectStruct, str: Pointer[U8] tag)

class GtkLabel is GtkWidgetInterface
  var ptr: GObjectStruct

  new create(str: String val) =>
    ptr = @gtk_label_new_with_mnemonic(str.cstring())
    ref_sink()

  new new_from_builder(gbuilder: GtkBuilder, str: String val) ? =>
    ptr = gbuilder.get_object(str)?
    ref_sink()

  fun ref get_ptr(): GObjectStruct => ptr

  fun ref set_label(str: String val) => None
    @gtk_label_set_label(ptr, str.cstring())

  fun _final() =>
    @printf("GtkLabel._final() called\n".cstring())
    @g_object_unref(ptr)
