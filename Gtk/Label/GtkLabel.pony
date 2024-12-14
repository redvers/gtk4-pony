use "lib:gtk-4"
use "gobject"
use "../Widget"

use @printf[U32](fmt: Pointer[U8] tag, ...)
use @g_object_unref[None](gobj: NullablePointer[GObjectS] tag)
use @gtk_label_new_with_mnemonic[NullablePointer[GObjectS]](str: Pointer[U8] tag)

class GtkLabel is GtkWidgetInterface
  var ptr: NullablePointer[GObjectS]

  new new_with_mnemonic(str: String val)? =>
    ptr = @gtk_label_new_with_mnemonic(str.cstring())
    if (ptr.is_none()) then error end
    ref_sink()

  fun ref get_ptr(): NullablePointer[GObjectS] => ptr

  fun _final() =>
    @printf("GtkLabel._final() called\n".cstring())
    @g_object_unref(ptr)
