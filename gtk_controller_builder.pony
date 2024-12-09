/*
use "collections"
use "actor_pinning"
use "Gtk"
use "Gtk/Application"
use "Gtk/Builder"
use "Gtk/Button"
use "Gtk/Window"
use "Gtk/ScrolledWindow"
use "GLib"
use "GLib/Variant"
use "GLib/Resource"
use "GLib/SimpleAction"
use "GObject/Value"
use "GObject/Object"

use "lib:gmodule-2.0"

use @printf[U32](fmt: Pointer[U8] tag, ...)

actor GtkControllerBuilder is GtkPony
  let env: Env
  let auth: PinUnpinActorAuth
  var window_active: Bool = false
  var me: GtkControllerBuilder tag
  var builder: (GtkBuilder | None) = None

  let stubs: GCallback[GtkControllerBuilder tag] = Callbacks~window_close_request[GtkControllerBuilder]()

  new create(env': Env) =>
    env = env'
    auth = PinUnpinActorAuth(env.root)
    ActorPinning.request_pin(auth)
    me = recover tag this end

  be initialize_gtk() =>
    if ActorPinning.is_successfully_pinned(auth) then
      env.out.print("We are pinned")
      Gtk.init()
      create_gtkapplication()
//      summon_builder()
    else
      env.out.print("We are not pinned")
      initialize_gtk()
    end

  be create_gtkapplication() =>
    let application: GtkApplication = GtkApplication("me.infect.red.gtk-demo")
    application.signal_connect_data[GtkControllerBuilder]("activate", Callbacks~window_close_request[GtkControllerBuilder](), me)
    application.






  be summon_builder() => None
    try
      let gresource: GResource = GResource.load("demo.gresource")
      gresource.register()

      builder = GtkBuilder.new_from_resource[GtkControllerBuilder tag](this, "/me/infect/gtk4-demo/main.ui")?
      match builder
      | let b: GtkBuilder =>
        build_window(b)?
        assign_callbacks(b)?
        loop()
      else
        @printf("My builder failed\n".cstring())
      end
    else
      @printf("Our builder failed\n".cstring())
    end

  fun ref build_window(b: GtkBuilder)? =>
    let window: GtkWindow = GtkWindow.new_from_builder(b, "window")?
    window.set_interactive_debugging(true)
//    window.signal_connect_data[GtkControllerBuilder]("close-request", Callbacks~window_close_request[GtkControllerBuilder](), me)
    window.set_visible(true)
    window_active = true

  fun ref assign_callbacks(b: GtkBuilder)? => if (false) then error end
    let aboutptr: GVariant = GVariant.create[GtkControllerBuilder]("x", this)
    let aboutaction: GSimpleAction = GSimpleAction("about", aboutptr)
    try
      let tptr: GtkControllerBuilder tag = aboutptr.apply[GtkControllerBuilder tag]("x")?
      @printf("%ul == %ul\n".cstring(), aboutptr, tptr)
      tptr.test_callback()
    else
      @printf("No data\n".cstring())
    end

  be test_callback() =>
      @printf("I'm in test_callback\n".cstring())

  be close_window() =>
    window_active = false

  be loop() =>
    GMainContext.default().>iteration(false)
    if (window_active) then
      loop()
    end
*/
