use "actor_pinning"
use "GLib"
use "GLib/Variant"
use "GObject/Object"
use "GLib/ActionEntry"
use "GLib/Resource"
use "Gtk"
use "Gtk/Application"
use "Gtk/Builder"
use "Gtk/ApplicationWindow"

use @printf[I32](fmt: Pointer[U8] tag, ...)
use @g_action_map_add_action[None](a: Pointer[GObject] tag, b: Pointer[GObject] tag)
use @g_action_map_add_action_entries[None](action_map: Pointer[GObject] tag, entries: Pointer[GObject] tag, n_entries: I32, user_data: Any)

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
//        assign_callbacks(b)?
//        loop()
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
                                    @{(w: Pointer[GObject], g: Pointer[GVariant], me: GtkPony) => @printf("Yay - I'm back baby\n".cstring())})
        app.add_action_entry(recover tag about end)
    end
//
//        let gv: GVariant val = recover iso GVariant.create[GtkApplication tag]("x", app) end
//       let aboutaction: GSimpleAction iso = recover iso GSimpleAction("app.about", consume gv) end
//        aboutaction.signal_connect[GtkApplication tag]("activate", Callbacks~activate_about(), app)
//        @g_action_map_add_action_entries(app.get_ptr(), aboutaction.get_ptr(), 1, app)
//        app.add_action2(consume aboutaction)
//        app.add_action(consume aboutaction)
//                                     app.signal_connect[String val]("window-removed", Callback~test_callback(app), "wibble")
//    window.signal_connect_data[GtkAppState]("close-request", @{(gtk: Pointer[GObject] tag) => None}, this)
    window.set_visible(true)
//    window_active = true


  fun get_name(): String val => name

primitive Callbacks
  fun activate_about() => @printf("activate_about activated\n".cstring())
