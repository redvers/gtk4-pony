use "actor_pinning"
use "../../GLib"
use "../../Gtk"
use "../../Gtk/ApplicationWindow"
use "../../GLib/Application"
use "../../GObject/Object"

use @printf[I32](fmt: Pointer[U8] tag, ...)
use @gtk_application_new[Pointer[GObject]](name: Pointer[U8] tag, flags: I32)
use @gtk_application_add_window[None](gobj: Pointer[GObject] tag, window: Pointer[GObject] tag)
use @g_application_run[I32](app: Pointer[GObject] tag, argc: I32, argv: Pointer[Pointer[U8]] tag)
use @g_signal_connect_data[U64](instance: Pointer[GObject] tag, signal: Pointer[U8] tag, chandler: Pointer[None] tag, data: Any, destdata: Pointer[None] tag, connectflags: I32)


actor GtkApplication
  var auth: PinUnpinActorAuth
  var gtkappstate: GtkPony ref
  var name: String val
  var ptr: Pointer[GObject] = Pointer[GObject]
  var initialized: Bool = false

  new create(auth': PinUnpinActorAuth, gtkappstate': GtkPony iso) =>
    gtkappstate = consume gtkappstate'
    name = gtkappstate.get_name()
    auth = auth'

    ActorPinning.request_pin(auth)



  be run() =>
    if (initialized) then
      GMainContext.default().iteration(true)
    else
      if (ActorPinning.is_successfully_pinned(auth)) then
        Gtk.init()
        initialized = true
        ptr = @gtk_application_new(name.cstring(), 0)
        GObject.ref_sink(ptr)

        @printf("Initialized\n".cstring())
        @g_signal_connect_data(ptr, "activate".cstring(),
            @{(gtkappptr: Pointer[GObject], ponygtk: GtkPony) =>
               @printf("In bare callback\n".cstring())
               ponygtk.test_activate()
               @printf("post activate function\n".cstring())
             }, gtkappstate, Pointer[None], 0)
//        @g_signal_connect_data(ptr, "activate".cstring(), @{() => @printf("In trivial callback\n".cstring())}, this, Pointer[None], 0)
        @printf("g_application_run start\n".cstring())
        @g_application_run(ptr, 0, Pointer[Pointer[U8]])
      end
    end
    run()

  be register_window_ptr(windowptr: Pointer[GObject] tag) =>
    @printf("In register_window_ptr\n".cstring())
    GtkApplications.add_window(ptr, windowptr)

  fun get_ptr(): Pointer[GObject] tag => ptr

primitive GtkApplications
  fun add_window(gobj: Pointer[GObject] tag, window: Pointer[GObject] tag) =>
    @gtk_application_add_window(gobj, window)

