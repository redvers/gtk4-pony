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

use @exit[None](err: I32)

actor Main
  let env: Env

  new create(env': Env) =>
    env = env'

    let gtkapplication: GtkApplication =
      GtkApplication(PinUnpinActorAuth(env.root), recover iso GtkAppState("me.infect.builder") end)
    gtkapplication.run()

class GtkAppState is GtkPony
  var name: String val
  var builder: (GtkBuilder | None) = None
  var gtkapplication: (GtkApplication tag| None) = None

  new create(name': String val) =>
    name = name'

  fun ref set_application(gtkapplication': GtkApplication tag) => gtkapplication = gtkapplication'
  fun get_name(): String val => name
  fun ref activate() => None

    try
      let gresource: GResource = GResource.new_from_data(UI.ui()?)
      gresource.register()

      builder = GtkBuilder.new_from_resource("/builder/demo.ui")?
      match builder
      | let b: GtkBuilder => None
        build_window(b)?
      else
        Debug.out("My builder failed\n")
      end
    else
      Debug.out("Our builder failed\n")
    end

  fun ref build_window(b: GtkBuilder)? => if (false) then error end
    Debug.out("In build_window()\n")
    let window: GtkApplicationWindow = GtkApplicationWindow.new_from_builder(b, "window1")?
    window.set_interactive_debugging(true)
    match gtkapplication
    | let app: GtkApplication tag =>
      window.register_application(app)
      for f in [ "new"; "open"; "save"; "save-as"; "copy"
                 "cut"; "paste"; "quit"; "about"; "help" ].values() do
        let a: GActionEntry[GtkAppState] iso = recover iso GActionEntry[GtkAppState] end
        a.set_name(f)
        a.set_activate(this~not_implemented_raw())

        app.add_action_entry[GtkAppState](consume a, this)
      end
    end
    window.set_visible(true)

  fun @not_implemented_raw(w: NullablePointer[GObjectS], g: Pointer[GVariant], me: GtkAppState) =>
    me.not_implemented()

  fun ref not_implemented() =>
    @printf("I'm actually in my class with my state and stuff\n".cstring())


