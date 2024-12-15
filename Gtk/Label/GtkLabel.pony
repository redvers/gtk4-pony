use "lib:gtk-4"
use "gobject"
use "../Widget"

use @printf[U32](fmt: Pointer[U8] tag, ...)
use @g_object_unref[None](gobj: GObjectStruct tag)
use @gtk_label_new_with_mnemonic[GObjectStruct](str: Pointer[U8] tag)

class GtkLabel is GtkWidgetInterface
  var ptr: GObjectStruct

  new new_with_mnemonic(str: String val) =>
    ptr = @gtk_label_new_with_mnemonic(str.cstring())
    ref_sink()

  fun ref get_ptr(): GObjectStruct => ptr

  fun _final() =>
    @printf("GtkLabel._final() called\n".cstring())
    @g_object_unref(ptr)
