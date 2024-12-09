use "actor_pinning"
use "GLib"
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

  fun ref test_activate() => @printf("In test_activate\n".cstring())
  fun ref activate(gtkapplication': GtkApplication tag) =>
    @printf("In activate\n".cstring())
    gtkapplication = gtkapplication'
    try
      let gresource: GResource = GResource.load("demo.gresource")
      gresource.register()

      builder = GtkBuilder.new_from_resource("/me/infect/gtk4-demo/main.ui")?
      match builder
      | let b: GtkBuilder =>
        build_window(b)?
//        assign_callbacks(b)?
//        loop()
      else
        @printf("My builder failed\n".cstring())
      end
    else
      @printf("Our builder failed\n".cstring())
    end

  fun ref build_window(b: GtkBuilder)? => if (false) then error end
    let window: GtkApplicationWindow = GtkApplicationWindow.new_from_builder(b, "window")?
    match gtkapplication
    | let app: GtkApplication tag => window.register_application(app)
    end
//    window.set_interactive_debugging(true)
////    window.signal_connect_data[GtkControllerBuilder]("close-request", Callbacks~window_close_request[GtkControllerBuilder](), me)
//    window.set_visible(true)
//    window_active = true




    @printf("In activate\n".cstring())

  fun get_name(): String val => name
