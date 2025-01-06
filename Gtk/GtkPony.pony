use "../Gtk/Application"

trait GtkPony
  fun ref activate(): None
  fun get_name(): String val
  fun ref set_application(x: GtkApplication tag)

