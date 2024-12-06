use @g_object_ref[Pointer[GObject]](gobj: Pointer[GObject] tag)
use @g_object_ref_sink[Pointer[GObject]](gobj: Pointer[GObject] tag)
use @g_object_unref[None](gobj: Pointer[GObject] tag)
use @g_signal_connect_data[U64](instance: Pointer[GObject] tag, signal: Pointer[U8] tag, chandler: Pointer[None] tag, data: Any, destdata: Pointer[None] tag, connectflags: I32)
use @g_object_set_data[None](gobj: Pointer[GObject], key: Pointer[U8] tag, data: Pointer[None])
use @printf[U32](fmt: Pointer[U8] tag, ...)

use "debug"
use "lib:gobject-2.0"

primitive GObject
  fun signal_connect_data[A: Any](ptr: Pointer[GObject] tag, signal: Pointer[U8] tag, chandler: GCallback[A], data: A) =>
    @g_signal_connect_data(ptr, signal, chandler, data, Pointer[None], 0)

  fun ref_sink(gobj: Pointer[GObject] tag) =>
    @g_object_ref_sink(gobj)

  fun unref(gobj: Pointer[GObject] tag) =>
    @g_object_unref(gobj)

interface GObjectInterface
  fun ref get_ptr(): Pointer[GObject] tag
  fun ref signal_connect_data[A: Any](signal: String val, chandler: GCallback[A], data: A) => None
    GObject.signal_connect_data[A](get_ptr(), signal.cstring(), chandler, consume data)

  fun ref ref_sink(gobj: Pointer[GObject] tag) =>
    GObject.ref_sink(gobj)

  fun ref unref(gobj: Pointer[GObject] tag) =>
    GObject.unref(gobj)

primitive GObjectPrimitives


//  fun gref(gobj: Pointer[GObject] tag): Pointer[GObject] tag =>
//    @g_object_ref(gobj)

//  fun set_data[A: Any](gobj: Pointer[GObject] tag, key: Pointer[U8] tag, data: A) => None

type GCallback[A: Any] is @{(Pointer[GObject] tag, A): None}
type GCallback2 is @{(Pointer[GObject] tag): None}

