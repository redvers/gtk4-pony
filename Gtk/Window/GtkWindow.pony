use "lib:gtk-4"
use "../../GLib/Object"
use "../Widget"
use "../Builder"

use @printf[U32](fmt: Pointer[U8] tag, ...)
use @gtk_window_new[Pointer[GObject] tag]()
use @gtk_window_set_interactive_debugging[None](enable: I32)
use @gtk_window_set_child[None](gobj: Pointer[GObject] tag, child: Pointer[GObject] tag)

class GtkWindow is GtkWindowInterface
  var ptr: Pointer[GObject] tag

  new create()? =>
    ptr = @gtk_window_new()
    if (ptr.is_null()) then error end
    ref_sink()

  new new_from_builder(gbuilder: GtkBuilder, str: String val) ? =>
    ptr = gbuilder.get_object(str)?
    ref_sink()

  fun ref get_ptr(): Pointer[GObject] tag => ptr

  fun _final() =>
    @printf("GtkWindow._final() called\n".cstring())
    GObject.unref(ptr)



interface GtkWindowInterface is GtkWidgetInterface
  fun ref set_child(gobj: GtkWidgetInterface) =>
    GtkWindows.set_child(get_ptr(), gobj.get_ptr())

  fun set_interactive_debugging(value: Bool) =>
    GtkWindows.set_interactive_debugging(value)

primitive GtkWindows
  fun set_child(window: Pointer[GObject] tag, child: Pointer[GObject] tag) =>
    @gtk_window_set_child(window, child)

  fun set_interactive_debugging(enable: Bool) =>
    if (enable) then
      @gtk_window_set_interactive_debugging(1)
    else
      @gtk_window_set_interactive_debugging(0)
    end
