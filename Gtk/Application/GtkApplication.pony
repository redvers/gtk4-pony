use "actor_pinning"
use "../../GLib"
use "../../GLib/SimpleAction"
use "../../GLib/ActionEntry"
use "../../GLib/SimpleActionGroup"
use "../../GLib/Application"
use "../../GLib/Object"

use "../../Gtk"
use "../../Gtk/ApplicationWindow"

use @printf[I32](fmt: Pointer[U8] tag, ...)
use @gtk_application_new[Pointer[GObject]](name: Pointer[U8] tag, flags: I32)
use @g_application_activate[None](app: Pointer[GObject] tag)
use @g_signal_connect_data[U64](instance: Pointer[GObject] tag, signal: Pointer[U8] tag, chandler: Pointer[None] tag, data: Any, destdata: Pointer[None] tag, connectflags: I32)
use @g_application_register[I32](instance: Pointer[GObject] tag, a: Pointer[None], b: Pointer[None])
use @gtk_application_get_active_window[Pointer[GObject]](app: Pointer[GObject])
use @g_action_map_add_action_entries[None](action_map: Pointer[GObject] tag, entries: Pointer[None] tag, n_entries: I32, user_data: Any tag)

actor GtkApplication is GtkApplicationInterface
  var auth: PinUnpinActorAuth
  var gtkappstate: GtkPony ref
  var name: String val
  var ptr: Pointer[GObject] = Pointer[GObject]
  var initialized: Bool = false

  fun get_ptr(): Pointer[GObject] tag => ptr

  new create(auth': PinUnpinActorAuth, gtkappstate': GtkPony iso) =>
    gtkappstate = consume gtkappstate'
    name = gtkappstate.get_name()
    auth = auth'

    ActorPinning.request_pin(auth)

    gtkappstate.set_application(recover tag this end)

  be add_action_entry[A: Any](action: GActionEntry[A] iso, data: Any) => None
    @g_action_map_add_action_entries(ptr, NullablePointer[GActionEntry[A]](consume action), I32(1), data)

  be run() =>
    if (initialized) then
      if (@gtk_application_get_active_window(ptr).is_null()) then
        return
      else
        GMainContext.default().iteration(false)
      end
    else
      if (ActorPinning.is_successfully_pinned(auth)) then
        Gtk.init()
        initialized = true
        ptr = @gtk_application_new(name.cstring(), 32)
        GObject.ref_sink(ptr)

        @g_signal_connect_data(ptr, "activate".cstring(),
            @{(gtkappptr: Pointer[GObject], ponygtk: GtkPony) =>
               ponygtk.activate()
             }, gtkappstate, Pointer[None], 0)
        g_application_run_pony()
      end
    end
    run()

  fun ref g_application_run_pony() =>
    @g_application_register(ptr, Pointer[None], Pointer[None])
    @g_application_activate(ptr)

  fun _final() =>
    ifdef debug then @printf("GtkApplication._final()\n".cstring()) end
      GObject.unref(ptr)

  be register_window_ptr(windowptr: Pointer[GObject] tag) =>
    GtkApplications.add_window(ptr, windowptr)

//  be signal_connect[A: Any #send](signal: String val, cb: {(): None} val, data: A) =>
//    var cbb = cb
//    @g_signal_connect_data(ptr, signal.cstring() , @{(cb: {(): None}) =>
//      @printf("whee\n".cstring())
//      cb()
//      @printf("erk\n".cstring())}, consume data, Pointer[None], I32(0))
