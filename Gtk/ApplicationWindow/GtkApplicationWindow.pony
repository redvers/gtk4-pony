use "lib:gtk-4"
use "gobject"
use "../Application"
use "../Widget"
use "../Builder"
use "../Window"

use @printf[U32](fmt: Pointer[U8] tag, ...)
use @gtk_application_window_new[GObjectStruct](application: GObjectStruct)
use @gtk_window_new[GObjectStruct]()
use @gtk_application_add_window[None](gobj: Pointer[U8] tag, window: GObjectStruct)

class GtkApplicationWindow is GtkApplicationWindowInterface
  var ptr: GObjectStruct

  new create() =>
    ptr = @gtk_window_new()
    ref_sink()

  fun ref get_ptr(): GObjectStruct => ptr

//  fun ref string(): String val => GObject.name_from_instance(NullablePointer[GObjectStruct](ptr))


  new new_from_builder(gbuilder: GtkBuilder, str: String val) ? =>
    ptr = gbuilder.get_object(str)?
    ref_sink()


  fun register_application(gtkapp: GtkApplication tag) =>
    gtkapp.register_window_ptr(ptr)

  fun _final() =>
    @printf("GtkApplicationWindow._final() called\n".cstring())
    GObject.unref(ptr)


trait GtkApplicationWindowInterface is GtkWindowInterface
