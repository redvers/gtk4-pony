use "debug"

use "gobject"
use @gtk_widget_set_visible[None](widget: GObjectStruct tag, visible: I32)


primitive GtkWidget
  fun set_visible(ptr: GObjectStruct tag, visible: Bool) =>
    if (visible) then
      @gtk_widget_set_visible(ptr, 1)
    else
      @gtk_widget_set_visible(ptr, 0)
    end
