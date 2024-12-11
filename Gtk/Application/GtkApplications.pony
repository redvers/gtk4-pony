use "../../GLib/Object"
use @gtk_application_add_window[None](gobj: Pointer[GObject] tag, window: Pointer[GObject] tag)

primitive GtkApplications
  fun add_window(gobj: Pointer[GObject] tag, window: Pointer[GObject] tag) =>
    @gtk_application_add_window(gobj, window)
