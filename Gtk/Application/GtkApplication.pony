use "actor_pinning"

use "gio"
use "glib"
use "gobject"

use "../../Gtk"
use "../../Gtk/ApplicationWindow"

use @printf[I32](fmt: Pointer[U8] tag, ...)
use @gtk_application_new[GObjectStruct](name: Pointer[U8] tag, flags: I32)
use @g_application_activate[None](app: GObjectStruct tag)
use @g_signal_connect_data[U64](instance: GObjectStruct tag, signal: Pointer[U8] tag, chandler: Pointer[None] tag, data: Any, destdata: Pointer[None] tag, connectflags: I32)
use @g_application_register[I32](instance: GObjectStruct tag, a: Pointer[None], b: Pointer[None])
use @gtk_application_get_active_window[GObjectStruct](app: GObjectStruct)
use @g_action_map_add_action_entries[None](action_map: GObjectStruct tag, entries: Pointer[None] tag, n_entries: I32, user_data: Any tag)

actor GtkApplication is GtkApplicationInterface
  var auth: PinUnpinActorAuth
  var gtkappstate: GtkPony ref
  var name: String val
  var ptr: GObjectStruct = GObjectStruct
  var initialized: Bool = false

  fun ref get_ptr(): GObjectStruct => ptr

  new create(auth': PinUnpinActorAuth, gtkappstate': GtkPony iso) =>
    gtkappstate = consume gtkappstate'
    name = gtkappstate.get_name()
    auth = auth'

    ActorPinning.request_pin(auth)

    gtkappstate.set_application(recover tag this end)

  be add_action_entry[A: Any](action: GActionEntryStruct[A] iso, data: Any) => None
    @g_action_map_add_action_entries(ptr, NullablePointer[GActionEntryStruct[A]](consume action), I32(1), data)


  be run() =>
    if (initialized) then
      if (NullablePointer[GObjectStruct](@gtk_application_get_active_window(ptr)).is_none()) then
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
            @{(gtkappptr: GObjectStruct, ponygtk: GtkPony) =>
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
  be register_window_ptr(windowptr: GObjectStruct tag) =>
    GtkApplications.add_window(ptr, windowptr)

//  be signal_connect[A: Any #send](signal: String val, cb: {(): None} val, data: A) =>
//    var cbb = cb
//    @g_signal_connect_data(ptr, signal.cstring() , @{(cb: {(): None}) =>
//      @printf("whee\n".cstring())
//      cb()
//      @printf("erk\n".cstring())}, consume data, Pointer[None], I32(0))
