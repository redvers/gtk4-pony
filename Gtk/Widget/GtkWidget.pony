use "debug"

use "gobject"
use @gtk_widget_set_visible[None](widget: NullablePointer[GObjectS] tag, visible: I32)


primitive GtkWidget
  fun set_visible(ptr: NullablePointer[GObjectS] tag, visible: Bool) =>
    if (visible) then
      @gtk_widget_set_visible(ptr, 1)
    else
      @gtk_widget_set_visible(ptr, 0)
    end
