use "lib:gtk-4"
use "../../Gtk"
use "gobject"
use "gio"

use @printf[U32](fmt: Pointer[U8] tag, ...)
use @gtk_builder_new_from_string[GObjectStruct](str: Pointer[U8] tag, length: I64)
use @gtk_builder_new_from_resource[GObjectStruct](str: Pointer[U8] tag)
use @gtk_builder_get_object[GObjectStruct](gobj: GObjectStruct tag, str: Pointer[U8] tag)
use @gtk_builder_new_from_file[GObjectStruct](filename: Pointer[U8] tag)
use @gtk_builder_set_current_object[None](builder: GObjectStruct tag, currentobject: GObjectStruct tag)
use @g_object_get_data[Any tag](gobj: GObjectStruct tag, key: Pointer[U8] tag)


class GtkBuilder is GObjectInterface
  var ptr: GObjectStruct
//  var pony_actor: GObjectStruct tag = GObjectStruct.none()

  new new_from_string[A: GtkPony tag](me: GtkPony tag, str: String val)? =>
    ptr = @gtk_builder_new_from_string(str.cstring(), str.size().i64())
    if (NullablePointer[GObjectStruct](ptr).is_none()) then error end
    ref_sink()

//    pony_actor = @gtk_builder_get_object(ptr, "pony-actor".cstring())
//    if (pony_actor.is_none()) then error end
//    GObject.ref_sink(pony_actor)

  new new_from_file[A: GtkPony tag](me: GtkPony tag, str: String val)? =>
    ptr = @gtk_builder_new_from_file(str.cstring())
    if (NullablePointer[GObjectStruct](ptr).is_none()) then error end
    ref_sink()

  new new_from_resource(resourcepath: String val)? =>
    ptr = @gtk_builder_new_from_resource(resourcepath.cstring())
    if (NullablePointer[GObjectStruct](ptr).is_none()) then error end
    ref_sink()
/*
    pony_actor = @gtk_builder_get_object(ptr, "pony-actor".cstring())
    if (pony_actor.is_none()) then error end
    GObject.ref_sink(pony_actor)
    GObject.set_data[A](pony_actor, "pony_actor_pointer".cstring(), consume me)
    @gtk_builder_set_current_object(ptr, pony_actor)

    let t: Pointer[None] = @g_object_get_data[Pointer[None]](pony_actor, "pony_actor_pointer".cstring())
    if (t.is_null()) then
      @printf("I got a null, this does not spark joy\n".cstring())
    end
*/


  fun get_object(name: String val): GObjectStruct ? =>
    let rptr: GObjectStruct = @gtk_builder_get_object(ptr, name.cstring())
    if (NullablePointer[GObjectStruct](rptr).is_none()) then error end
    rptr

  fun ref get_ptr(): GObjectStruct => ptr

  fun _final() =>
    GObject.unref(ptr)

