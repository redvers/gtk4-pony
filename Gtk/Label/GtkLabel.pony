use "lib:gtk-4"
use "../../GObject/Object"
use "../Widget"

use @printf[U32](fmt: Pointer[U8] tag, ...)
use @gtk_label_new_with_mnemonic[Pointer[GObject] tag](str: Pointer[U8] tag)
use @g_object_unref[None](gobj: Pointer[GObject] tag)
use @g_object_ref[Pointer[GObject] tag](gobj: Pointer[GObject] tag)

class GtkLabel is GtkWidgetInterface
  var ptr: Pointer[GObject] tag

  new new_with_mnemonic(str: String val) =>
    ptr = @gtk_label_new_with_mnemonic(str.cstring())
    @g_object_ref(ptr)

  fun ref get_ptr(): Pointer[GObject] tag => ptr

  fun _final() =>
    @printf("GtkLabel._final() called\n".cstring())
    @g_object_unref(ptr)
