use "debug"

use "../../GObject/Object"
use @gtk_widget_set_visible[None](widget: Pointer[GObject] tag, visible: I32)


primitive GtkWidget
  fun set_visible(ptr: Pointer[GObject] tag, visible: Bool) =>
    if (visible) then
      @gtk_widget_set_visible(ptr, 1)
    else
      @gtk_widget_set_visible(ptr, 0)
    end
