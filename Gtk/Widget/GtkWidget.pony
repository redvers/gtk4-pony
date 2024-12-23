use "debug"

use "gobject"
use @gtk_widget_set_visible[None](widget: GObjectStruct tag, visible: I32)
use @gtk_widget_set_valign[None](widget: GObjectStruct tag, align: I32)
use @gtk_widget_set_hexpand[None](widget: GObjectStruct tag, align: I32)


primitive GtkWidget
  fun set_visible(ptr: GObjectStruct tag, visible: Bool) =>
    if (visible) then
      @gtk_widget_set_visible(ptr, 1)
    else
      @gtk_widget_set_visible(ptr, 0)
    end

  fun set_valign(ptr: GObjectStruct, align: I32) =>
    @gtk_widget_set_valign(ptr, align)

  fun set_hexpand(ptr: GObjectStruct, align: I32) =>
    @gtk_widget_set_hexpand(ptr, align)
