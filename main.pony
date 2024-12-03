use "lib:gtk-4"
use "lib:glib-2.0"
use "lib:gobject-2.0"
use "actor_pinning"
use @printf[USize](fmt: Pointer[None] tag)
use @sleep[None](secs: USize)
use @exit[None](e: I32)
use "Gtk"
use "Gtk/Window"
use "GLib"
use "GObject/Object"


actor Main
  new create(env': Env) =>
    GtkController(env')
    .>initialize_gtk()






actor GtkController
  let env: Env
  let auth: PinUnpinActorAuth
  var window_active: Bool = false
  var me: GtkController tag

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
    let w: GtkWindow = GtkWindow
    w.set_visible(true)
    w.signal_connect_data[GtkController]("close-request", Callbacks~e[GtkController](), me)
    window_active = true
    loop()

  be close_window() =>
    window_active = false

  be loop() =>
    GMainContext.default().>iteration(false)
    if (window_active) then
      loop()
    end

  be done() =>
    ActorPinning.request_unpin(auth)

primitive Callbacks
  fun @e[A: GtkController](gobj: Pointer[GObject], me: A) => None
    me.close_window()


