use "lib:gtk-4"
use "gobject"
use "gio"

use "../Widget"
use "../Builder"

use @printf[U32](fmt: Pointer[U8] tag, ...)
use @gtk_box_new[GObjectStruct](orientation: I32, spacing: I32)

class GtkBox is GtkBoxInterface
  var ptr: GObjectStruct = GObjectStruct

  new create(orientation: I32, spacing: I32) =>
    ptr = @gtk_box_new(orientation, spacing)
    ref_sink()

  fun ref get_ptr(): GObjectStruct => ptr

  new new_from_builder(gbuilder: GtkBuilder, str: String val) ? =>
    ptr = gbuilder.get_object(str)?
    ref_sink()

  fun _final() =>
    @printf("GtkBox._final() called\n".cstring())
    GObject.unref(ptr)

