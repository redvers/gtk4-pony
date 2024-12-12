use "lib:gtk-4"
use "gobject"
use "../Widget"

use @printf[U32](fmt: Pointer[U8] tag, ...)
use @gtk_label_new_with_mnemonic[Pointer[GObject] tag](str: Pointer[U8] tag)

class GtkLabel is GtkWidgetInterface
  var ptr: Pointer[GObject] tag

  new new_with_mnemonic(str: String val)? =>
    if (ptr.is_null()) then error end
    ptr = @gtk_label_new_with_mnemonic(str.cstring())
    ref_sink()

  fun ref get_ptr(): Pointer[GObject] tag => ptr

  fun _final() =>
    @printf("GtkLabel._final() called\n".cstring())
    @g_object_unref(ptr)
