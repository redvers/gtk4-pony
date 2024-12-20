use "actor_pinning"

use "debug"

use "glib"
use "gobject"
use "gio"

use "../../Gtk"
use "../../Gtk/Application"
use "../../Gtk/ApplicationWindow"

use @exit[None](err: I32)

class GtkAppState is GtkPony
  var name: String val
  var gtkapplication: (GtkApplication tag| None) = None

  new create(name': String val) =>
    name = name'

  fun ref set_application(gtkapplication': GtkApplication tag) =>
    gtkapplication = gtkapplication'

  fun get_name(): String val =>
    name

  fun ref activate() => None
    let window: GtkApplicationWindow = GtkApplicationWindow.create()
//    window.set_interactive_debugging(true)
    match gtkapplication
    | let app: GtkApplication tag =>
      window.register_application(app)
      register_custom_datatypes()
    end
    window.set_visible(true)

  fun ref register_custom_datatypes() => None
    let prow: PRowEntry = PRowEntry(this)




    try
      var gvalue: GValue = GValue.init_from_name("gchararray")?
      gvalue.set_string("Hello World")
      prow.set_property("name", gvalue)
    else
      @printf("Unable to find gtype for gpointer\n".cstring())
    end

