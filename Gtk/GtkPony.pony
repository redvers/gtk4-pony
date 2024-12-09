use "../Gtk/Application"
use @printf[I32](fmt: Pointer[U8] tag)

interface GtkPony
  fun ref activate(applictaion: GtkApplication tag): None
  fun get_name(): String val
  fun ref test_activate(): None

