use "actor_pinning"
use "Gtk"
use "Gtk/Window"
use "Gtk/Label"
use "GLib"
use "GObject/Object"

actor GtkController
  let env: Env
  let auth: PinUnpinActorAuth
  var window_active: Bool = false
  var me: GtkController tag
  var window: (GtkWindow | None) = None

  new create(env': Env) =>
    env = env'
    auth = PinUnpinActorAuth(env.root)
    ActorPinning.request_pin(auth)
    me = recover tag this end

  be initialize_gtk() =>
    if ActorPinning.is_successfully_pinned(auth) then
      env.out.print("We are pinned")
      Gtk.init()
      build_window()
    else
      env.out.print("We are not pinned")
      initialize_gtk()
    end

  be build_window() =>
    window = GtkWindow
    match window
    | let w: GtkWindow =>
      let l: GtkLabel = GtkLabel.new_with_mnemonic("Test wheee")
      w.set_visible(true)
      w.set_child(l)
      w.set_interactive_debugging(true)
      w.signal_connect_data[GtkController]("close-request", Callbacks~window_close_request[GtkController](), me)
      window_active = true
      loop()
    end

  be close_window() =>
    window_active = false

  be loop() =>
    GMainContext.default().>iteration(false)
    if (window_active) then
      loop()
    end

  be done() =>
    ActorPinning.request_unpin(auth)

