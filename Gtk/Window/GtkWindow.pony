use "lib:gtk-4"
use "../../GObject/Object"
use "../Widget"

use @printf[U32](fmt: Pointer[U8] tag, ...)
use @gtk_window_new[Pointer[GObject]]()
use @gtk_window_set_interactive_debugging[None](enable: I32)
use @g_object_unref[None](gobj: Pointer[GObject])

class GtkWindow is GtkWidgetInterface
  var ptr: Pointer[GObject]

  new create() =>
    ptr = @gtk_window_new()

  fun ref get_ptr(): Pointer[GObject] => ptr

  fun ref set_interactive_debugging(enable: Bool) =>
    if (enable) then
      @gtk_window_set_interactive_debugging(1)
    else
      @gtk_window_set_interactive_debugging(0)
    end

  fun _final() =>
    @printf("GtkWindow._final() called\n".cstring())
    @g_object_unref(ptr)
