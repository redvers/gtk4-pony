use "actor_pinning"

use "debug"

use "glib"
use "gobject"
use "gio"

use @printf[I32](fmt: Pointer[U8] tag, ...)
use "../../Gtk"
use "../../Gtk/Application"
use "../../Gtk/Builder"
use "../../Gtk/ApplicationWindow"
use "../../Gtk/Label"
use "../../Gtk/Button"
use "../../Gtk/ScrolledWindow"

use @exit[None](err: I32)

actor Main
  let env: Env

  new create(env': Env) =>
    env = env'

    let gtkapplication: GtkApplication =
      GtkApplication(PinUnpinActorAuth(env.root), recover iso GtkAppState("me.infect.red.gtk-demo") end)
    gtkapplication.run()

class GtkAppState is GtkPony
  var name: String val
  var builder: (GtkBuilder | None) = None
  var window_active: Bool = false
  var gtkapplication: (GtkApplication tag| None) = None

  new create(name': String val) =>
    name = name'
  fun ref set_application(gtkapplication': GtkApplication tag) => gtkapplication = gtkapplication'
  fun get_name(): String val => name
  fun ref activate() => None

    try
      let gresource: GResource = GResource.new_from_data(UI.ui()?)
//      let gresource: GResource = GResource.load("demo.gresource")?
      gresource.register()

      builder = GtkBuilder.new_from_resource("/me/infect/gtk4-demo/main.ui")?
      match builder
      | let b: GtkBuilder =>
        build_window(b)?
      else
        Debug.out("My builder failed\n")
      end
    else
      Debug.out("Our builder failed\n")
    end

  fun ref build_window(b: GtkBuilder)? => if (false) then error end
    Debug.out("In build_window()\n")
    let window: GtkApplicationWindow = GtkApplicationWindow.new_from_builder(b, "window")?
    match gtkapplication
    | let app: GtkApplication tag => window.register_application(app)
        let about: GActionEntry[GtkAppState] iso = recover iso GActionEntry[GtkAppState] end
        about.set_name("about")
        about.set_activate(this~raw_about())

        let inspector: GActionEntry[GtkApplicationWindow] iso = recover iso GActionEntry[GtkApplicationWindow] end
        inspector.set_name("inspector")
        inspector.set_activate(this~raw_inspector())

        app.add_action_entry[GtkAppState](consume about, app)
        app.add_action_entry[GtkApplicationWindow](consume inspector, app)
    end
    window.set_visible(true)

  fun @raw_about(w: GObjectStruct, g: Pointer[GVariantStruct], me: GtkAppState) =>
    me.activate_about()
  fun activate_about() => @printf("activate_about\n".cstring())

  fun @raw_inspector(w: GObjectStruct, g: Pointer[GVariantStruct], window: GtkApplicationWindow) =>
    window.set_interactive_debugging(true)



