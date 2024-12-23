use "debug"
use "lib:gtk-4"
use "gobject"
use "../Widget"
use "../Builder"

use @printf[U32](fmt: Pointer[U8] tag, ...)
use @g_signal_connect_data[U64](instance: GObjectStruct tag, signal: Pointer[U8] tag, ...)

class GtkButton is GtkButtonInterface
  var ptr: GObjectStruct

  new create() =>
    ptr = @gtk_button_new()
    ref_sink()

  new new_from_ptr(gobj': GObjectStruct) =>
    ptr = gobj'
    ref_sink()

  new new_from_builder(gbuilder: GtkBuilder, str: String val) ? =>
    ptr = gbuilder.get_object(str)?
    ref_sink()

  new new_from_icon_name(name: String val) =>
    ptr = @gtk_button_new_from_icon_name(name.cstring())
    ref_sink()


  fun ref get_ptr(): GObjectStruct => ptr

  fun _final() =>
    GObject.unref(ptr)




