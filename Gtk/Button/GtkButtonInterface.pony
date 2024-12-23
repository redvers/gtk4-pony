use "../Widget"

interface GtkButtonInterface is GtkWidgetInterface
  fun ref set_icon_name(name: String val) =>
    GtkButtons.set_icon_name(get_ptr(), name.cstring())
