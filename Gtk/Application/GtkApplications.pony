use "gobject"

use @gtk_application_add_window[None](gobj: NullablePointer[GObjectS] tag, window: NullablePointer[GObjectS] tag)

primitive GtkApplications
  fun add_window(gobj: NullablePointer[GObjectS] tag, window: NullablePointer[GObjectS] tag) =>
    @gtk_application_add_window(gobj, window)
