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
use @g_application_activate[None](app: Pointer[GObject] tag)
use @g_signal_connect_data[U64](instance: Pointer[GObject] tag, signal: Pointer[U8] tag, chandler: Pointer[None] tag, data: Any, destdata: Pointer[None] tag, connectflags: I32)
use @g_application_register[I32](instance: Pointer[GObject] tag, a: Pointer[None], b: Pointer[None])
use @gtk_application_get_active_window[Pointer[GObject]](app: Pointer[GObject])

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

    gtkappstate.set_application(recover tag this end)

  be run() =>
    if (initialized) then
      if (@gtk_application_get_active_window(ptr).is_null()) then
        return
      else
        GMainContext.default().iteration(true)
      end
    else
      if (ActorPinning.is_successfully_pinned(auth)) then
        Gtk.init()
        initialized = true
        ptr = @gtk_application_new(name.cstring(), 32)
        GObject.ref_sink(ptr)

        @printf("Initialized\n".cstring())
        @g_signal_connect_data(ptr, "activate".cstring(),
            @{(gtkappptr: Pointer[GObject], ponygtk: GtkPony) =>
               @printf("In bare callback\n".cstring())
               ponygtk.activate()
               @printf("post activate function\n".cstring())
             }, gtkappstate, Pointer[None], 0)
        g_application_run_pony()
      end
    end
    run()

  fun ref g_application_run_pony() =>
    @printf("In g_application_run_pony()\n".cstring())
    @g_application_register(ptr, Pointer[None], Pointer[None])
    @printf("Iregistered\n".cstring())
    @g_application_activate(ptr)

  fun _final() =>
    @printf("GtkApplication._final()".cstring())
      GObject.unref(ptr)

  be register_window_ptr(windowptr: Pointer[GObject] tag) =>
    @printf("In register_window_ptr\n".cstring())
    GtkApplications.add_window(ptr, windowptr)

  fun get_ptr(): Pointer[GObject] tag => ptr

primitive GtkApplications
  fun add_window(gobj: Pointer[GObject] tag, window: Pointer[GObject] tag) =>
    @gtk_application_add_window(gobj, window)

