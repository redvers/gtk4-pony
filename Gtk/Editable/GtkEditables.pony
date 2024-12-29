use "gobject"

primitive GtkEditables
  fun set_editable(gobject: GObjectStruct, v: I32) =>
    @gtk_editable_set_editable(gobject, v)
