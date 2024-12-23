use "debug"

use "gobject"

interface GtkWidgetInterface is GObjectInterface
  fun ref get_ptr(): GObjectStruct

  fun ref set_visible(visible: Bool) =>
    GtkWidget.set_visible(get_ptr(), visible)

  fun ref set_valign(align: I32) =>
    GtkWidget.set_valign(get_ptr(), align)

  fun ref set_hexpand(align: Bool) =>
    if (align) then
      GtkWidget.set_hexpand(get_ptr(), 1)
    else
      GtkWidget.set_hexpand(get_ptr(), 0)
    end
//  fun ref string(): String val => GObject.name_from_instance(NullablePointer[GObjectStruct](get_ptr()))


