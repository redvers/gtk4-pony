use "debug"
use "actor_pinning"

use "../../Gtk"
use "../../Gtk/Application"

class AppState is GtkPony
  var name: String val
  var gtkapplication: (GtkApplication tag | None) = None

  new create(name': String val) =>
    name = name'

  fun ref set_application(gtkapplication': GtkApplication tag) =>
    gtkapplication = gtkapplication'

  fun get_name(): String val => name

  fun activate(): None =>
    Debug.out("I'm in the AppState.activate() callback\n")
