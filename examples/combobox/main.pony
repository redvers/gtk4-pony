use "actor_pinning"

use "debug"

use "glib"
use "gobject"
use "gio"

use @printf[I32](fmt: Pointer[U8] tag, ...)
use "../../Gtk"
use "../../Gtk/Application"
use "../../Gtk/ApplicationWindow"

use @exit[None](err: I32)

actor Main
  let env: Env

  new create(env': Env) =>
    env = env'

    let gtkapplication: GtkApplication =
      GtkApplication(PinUnpinActorAuth(env.root), recover iso GtkAppState("me.infect.comboboxes") end)
    gtkapplication.run()

class GtkAppState is GtkPony
  var name: String val
  var gtkapplication: (GtkApplication tag| None) = None

  new create(name': String val) =>
    name = name'

  fun ref set_application(gtkapplication': GtkApplication tag) => gtkapplication = gtkapplication'
  fun get_name(): String val => name
  fun ref activate() => None
    let window: GtkApplicationWindow = GtkApplicationWindow.create()
//    window.list_properties()
    window.set_interactive_debugging(true)
    match gtkapplication
    | let app: GtkApplication tag =>
      window.register_application(app)
      register_custom_datatypes()
    end
    window.set_visible(true)

  fun ref register_custom_datatypes() => None
    let prow: PRowEntry = PRowEntry(this)
    @printf("My prow lives at %lu".cstring(), prow)
    try
      var gvalue: GValue = GValue.init_from_name("gchararray")?
      gvalue.set_string("Hello World")
      prow.set_property("name", gvalue)
//      var mystr = gvalue.get_string()
//      @printf("did I extract this correctly? %s\n".cstring(), mystr.cstring())

//      var gvalue2: GValue = GValue.init_from_name("gchararray")?
//      prow.get_property("name", gvalue)
    else
      @printf("Unable to find gtype for gpointer\n".cstring())
    end


  fun @not_implemented_raw(w: NullablePointer[GObjectStruct], g: Pointer[GVariantStruct], me: GtkAppState) =>
    me.not_implemented()

  fun ref not_implemented() =>
    @printf("I'm actually in my class with my state and stuff\n".cstring())

