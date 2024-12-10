use "debug"

use "../../GLib/Object"

interface GtkWidgetInterface is GObjectInterface
  fun ref get_ptr(): Pointer[GObject] tag
  fun ref set_visible(visible: Bool) => None
    GtkWidget.set_visible(get_ptr(), visible)
