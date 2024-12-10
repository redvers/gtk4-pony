use "actor_pinning"
use "GLib"
use "GLib/Variant"
use "GLib/Object"
use "GLib/ActionEntry"
use "GLib/Resource"

use "Gtk"
use "Gtk/Application"
use "Gtk/Builder"
use "Gtk/ApplicationWindow"

use @printf[I32](fmt: Pointer[U8] tag, ...)

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

  fun ref activate() =>
    try
      let gresource: GResource = GResource.load("demo.gresource")
      gresource.register()

      builder = GtkBuilder.new_from_resource("/me/infect/gtk4-demo/main.ui")?
      match builder
      | let b: GtkBuilder =>
        build_window(b)?
      else
        @printf("My builder failed\n".cstring())
      end
    else
      @printf("Our builder failed\n".cstring())
    end

  fun ref build_window(b: GtkBuilder)? => if (false) then error end
    @printf("In build_window()\n".cstring())
    let window: GtkApplicationWindow = GtkApplicationWindow.new_from_builder(b, "window")?
    window.set_interactive_debugging(true)
    match gtkapplication
    | let app: GtkApplication tag => window.register_application(app)
        let about: GActionEntry = GActionEntry
                                  .>set_name("about")
                                  .>set_activate(
                                     @{(w: Pointer[GObject], g: Pointer[GVariant], me: GtkPony) =>
                                        match me
                                        | let m: GtkAppState => m.activate_about()
                                        end
                                      }
                                    )
        app.add_action_entry(recover tag about end)
    end
    window.set_visible(true)

  fun activate_about() => @printf("activate_about\n".cstring())

  fun get_name(): String val => name

