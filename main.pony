use "lib:gtk-4"
use "lib:glib-2.0"
use "lib:gobject-2.0"
use "actor_pinning"
use @printf[USize](fmt: Pointer[None] tag)
use @sleep[None](secs: USize)
use @exit[None](e: I32)

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
      @gtk_init()
      build_window()
    else
      env.out.print("We are not pinned")
      initialize_gtk()
    end

  be build_window() =>
    let w: NullablePointer[GtkWidget] = @gtk_window_new()
    @gtk_widget_set_visible(w, 1)
    @g_signal_connect_data(w, "close-request".cstring(), Callbacks~e(), me, Pointer[None], 0)
    window_active = true
    loop()

  be close_window() =>
    window_active = false

  be loop() =>
    let d: NullablePointer[GMainContext] = @g_main_context_default()
    @g_main_context_iteration(d, 0)
    if (window_active) then
      loop()
    end

  be done() =>
    ActorPinning.request_unpin(auth)

primitive Callbacks
  fun @e(gobj: Pointer[None], me: GtkController tag) =>
    @printf("In callback\n".cstring())
    me.close_window()



