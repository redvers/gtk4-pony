use "lib:gtk-4"
use "../../GObject/Object"
use "../../GLib/Resource"

use @printf[U32](fmt: Pointer[U8] tag, ...)
use @gtk_builder_new_from_string[Pointer[GObject] tag](str: Pointer[U8] tag, length: I64)
use @gtk_builder_new_from_resource[Pointer[GObject] tag](str: Pointer[U8] tag)
use @g_object_unref[None](gobj: Pointer[GObject] tag)
use @g_object_ref[Pointer[GObject] tag](gobj: Pointer[GObject] tag)
use @gtk_builder_get_object[Pointer[GObject] tag](gobj: Pointer[GObject] tag, str: Pointer[U8] tag)

class GtkBuilder is GObjectInterface
  var ptr: Pointer[GObject] tag

  new new_from_string(str: String val) =>
    ptr = @gtk_builder_new_from_string(str.cstring(), str.size().i64())
    @g_object_ref(ptr)

  new new_from_resource(resourcepath: String val)? =>
    ptr = @gtk_builder_new_from_resource(resourcepath.cstring())
    if (ptr.is_null()) then
      error
    else
      @g_object_ref(ptr)
    end

  fun get_object(name: String val): Pointer[GObject] tag =>
    @gtk_builder_get_object(ptr, name.cstring())

  fun ref get_ptr(): Pointer[GObject] tag => ptr

  fun _final() =>
    if (ptr.is_null()) then
      None
    else
      @printf("GtkBuilder._final() called\n".cstring())
      @g_object_ref(ptr)
    end

//    @g_object_unref(ptr)
