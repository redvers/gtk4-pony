use "debug"
use "lib:gtk-4"
use "gobject"
use "../Widget"
use "../Builder"

use @printf[U32](fmt: Pointer[U8] tag, ...)
use @gtk_button_new[GObjectStruct]()
use @g_signal_connect_data[U64](instance: GObjectStruct tag, signal: Pointer[U8] tag, ...)

class GtkButton is GtkWidgetInterface
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

  fun ref get_ptr(): GObjectStruct => ptr

  fun _final() =>
    GObject.unref(ptr)




