use @g_signal_connect_data[U64](instance: Pointer[GObject], signal: Pointer[U8] tag, chandler: Pointer[None] tag, data: Any, destdata: Pointer[None] tag, connectflags: I32)

use "debug"

struct GObject

interface GObjectInterface
  fun ref get_ptr(): Pointer[GObject]
  fun ref signal_connect_data[A: Any](signal: String val, chandler: GCallback[A], data: A) => None
    GObjectPrimitives.signal_connect_data[A](get_ptr(), signal.cstring(), chandler, consume data)


primitive GObjectPrimitives
  fun signal_connect_data[A: Any](ptr: Pointer[GObject], signal: Pointer[U8] tag, chandler: GCallback[A], data: A) =>
    @g_signal_connect_data(ptr, signal, chandler, data, Pointer[None], 0)


type GCallback[A: Any] is @{(Pointer[GObject], A): None}

