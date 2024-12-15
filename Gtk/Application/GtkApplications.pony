use "gobject"

use @gtk_application_add_window[None](gobj: GObjectStruct tag, window: GObjectStruct tag)

primitive GtkApplications
  fun add_window(gobj: GObjectStruct tag, window: GObjectStruct tag) =>
    @gtk_application_add_window(gobj, window)
