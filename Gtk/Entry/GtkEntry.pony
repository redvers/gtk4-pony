use "debug"
use "lib:gtk-4"
use "gobject"
use "../Widget"
use "../Builder"

use @printf[U32](fmt: Pointer[U8] tag, ...)
use @gtk_entry_new[GObjectStruct]()

class GtkEntry is GtkEntryInterface
  var ptr: GObjectStruct

  new create() =>
    ptr = @gtk_entry_new()
    ref_sink()

  new new_from_ptr(gobj': GObjectStruct) =>
    ptr = gobj'
    ref_sink()

  new new_from_builder(gbuilder: GtkBuilder, str: String val) ? =>
    ptr = gbuilder.get_object(str)?
    ref_sink()

  fun ref get_ptr(): GObjectStruct => ptr

  fun _final() =>
    GObject.unref(ptr)




