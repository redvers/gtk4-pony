use "lib:gtk-4"
use "../../GObject/Object"
use "../Application"
use "../Widget"
use "../Builder"
use "../Window"

use @printf[U32](fmt: Pointer[U8] tag, ...)
use @gtk_application_window_new[Pointer[GObject] tag](application: Pointer[GObject])
use @gtk_window_new[Pointer[GObject] tag]()
use @gtk_application_add_window[None](gobj: Pointer[U8] tag, window: Pointer[GObject])

class GtkApplicationWindow is GtkApplicationWindowInterface
  var ptr: Pointer[GObject] tag

  new create()? =>
    ptr = @gtk_window_new()
    if (ptr.is_null()) then error end
    ref_sink()

  new new_from_builder(gbuilder: GtkBuilder, str: String val) ? =>
    ptr = gbuilder.get_object(str)?
    ref_sink()

  fun ref get_ptr(): Pointer[GObject] tag => ptr

  fun register_application(gtkapp: GtkApplication tag) =>
    gtkapp.register_window_ptr(ptr)



  fun _final() =>
    @printf("GtkWindow._final() called\n".cstring())
    GObject.unref(ptr)


interface GtkApplicationWindowInterface is GtkWindowInterface
//  fun ref add_window(gobj: Pointer[GObject] tag, window: Pointer[GObject] tag) =>
//    @gtk_application_add_window(gobj, window)



//  fun ref set_child(gobj: GtkWidgetInterface) =>
//    set_child(gobj.get_ptr())

//primitive GtkApplicationWindows
//  fun set_child(window: Pointer[GObject] tag, child: Pointer[GObject] tag) =>
 //   @gtk_window_set_child(window, child)
