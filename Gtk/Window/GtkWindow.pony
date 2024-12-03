use "lib:gtk-4"
use "../../GObject/Object"
use "../Widget"

use @g_signal_connect_data[U64](instance: Pointer[GObject], signal: Pointer[U8] tag, chandler: Pointer[None] tag, data: Any, destdata: Pointer[None] tag, connectflags: I32)
use @gtk_widget_set_visible[None](window: Pointer[GObject], visible: I32)
use @gtk_window_new[Pointer[GObject]]()

class GtkWindow is GtkWidgetInterface
  var ptr: Pointer[GObject]

  new create() =>
    ptr = @gtk_window_new()

  fun ref get_ptr(): Pointer[GObject] => ptr

//  fun ref set_visible(visible: Bool) =>
//    if (visible) then
//      @gtk_widget_set_visible(ptr, 1)
 //   else
 //     @gtk_widget_set_visible(ptr, 0)
 //   end

//  fun ref signal_connect_data[A: Any](signal: String val, chandler: @{(Pointer[None], A): None}, data: Any) =>
//    @g_signal_connect_data(ptr, signal.cstring(), chandler, data, Pointer[None], 0)
