use "debug"

use "gobject"

interface GtkWidgetInterface is GObjectInterface
  fun ref get_ptr(): NullablePointer[GObjectS] tag
  fun ref set_visible(visible: Bool) => None
    GtkWidget.set_visible(get_ptr(), visible)
