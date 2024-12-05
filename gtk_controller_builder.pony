use "collections"
use "actor_pinning"
use "Gtk"
use "Gtk/Builder"
use "Gtk/Button"
use "Gtk/Window"
use "GLib"
use "GLib/Resource"
use "GObject/Value"
use "GObject/Object"

use "lib:gmodule-2.0"

use @printf[U32](fmt: Pointer[U8] tag, ...)

actor GtkControllerBuilder
  let env: Env
  let auth: PinUnpinActorAuth
  var window_active: Bool = false
  var me: GtkControllerBuilder tag
  var builder: (GtkBuilder | None) = None

  new create(env': Env) =>
    env = env'
    auth = PinUnpinActorAuth(env.root)
    ActorPinning.request_pin(auth)
    me = recover tag this end

  be initialize_gtk() =>
    if ActorPinning.is_successfully_pinned(auth) then
      env.out.print("We are pinned")
      Gtk.init()
      summon_builder()
    else
      env.out.print("We are not pinned")
      initialize_gtk()
    end

  be summon_builder() => None
    try
      builder = GtkBuilder.new_from_file("gtk4-pony-test-ui.ui")
      match builder
      | let b: GtkBuilder =>
        build_window(b)?
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
    window.signal_connect_data[GtkControllerBuilder]("close-request", Callbacks~window_close_request[GtkControllerBuilder](), me)
    window.set_visible(true)

    let buttona: GtkButton = GtkButton.new_from_builder(b, "a")?
    buttona.signal_connect_data[GtkControllerBuilder]("clicked", Callbacks~button_a_clicked[GtkControllerBuilder](), me)

    window_active = true

  be close_window() =>
    window_active = false

  be loop() =>
    GMainContext.default().>iteration(false)
    if (window_active) then
      loop()
    end

  be done() =>
    ActorPinning.request_unpin(auth)

  be buttona_clicked(buttona: GtkButton iso) =>
    @printf("In buttona callback in gtkcontrollerbuilder\n".cstring())

    for f in Range[USize](0,10000) do
      let b: GtkButton = GtkButton
    end






