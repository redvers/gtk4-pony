use "../Gtk/Application"
use @printf[I32](fmt: Pointer[U8] tag)

interface GtkPony
  fun ref activate(): None
  fun get_name(): String val
  fun ref set_application(x: GtkApplication tag)

