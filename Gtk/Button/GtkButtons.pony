use "gobject"

primitive GtkButtons
  fun set_icon_name(button: GObjectStruct, iconname: Pointer[U8] tag) =>
    @gtk_button_set_icon_name(button, iconname)
