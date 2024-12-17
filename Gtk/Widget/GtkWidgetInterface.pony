use "debug"

use "gobject"

interface GtkWidgetInterface is GObjectInterface
  fun ref get_ptr(): GObjectStruct
  fun ref set_visible(visible: Bool) => None
    GtkWidget.set_visible(get_ptr(), visible)
  fun ref string(): String val => GObject.name_from_instance(NullablePointer[GObjectStruct](get_ptr()))


