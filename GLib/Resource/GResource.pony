use "lib:gtk-4"
use "lib:gio-2.0"
use ".."

use @printf[U32](fmt: Pointer[U8] tag, ...)
use @g_resource_load[Pointer[GResource] tag](str: Pointer[U8] tag, gerr: Pointer[NullablePointer[GError]])
use @g_resource_unref[None](gobj: Pointer[GResource] tag)
use @g_resource_ref[Pointer[GResource] tag](gobj: Pointer[GResource] tag)
use @g_resources_register[None](gobj: Pointer[GResource] tag)

class GResource
  var ptr: Pointer[GResource] tag
  var ge: NullablePointer[GError] = NullablePointer[GError].none()

  fun ref get_ptr(): Pointer[GResource] tag => ptr

  new load(str: String val) =>
    ptr = @g_resource_load(str.cstring(), addressof ge)

    if (ptr.is_null()) then
      @printf("Pointer[GResource] is null\n".cstring())
    else
      @g_resource_ref(ptr)
      None
    end

  fun register() =>
    @printf("GResources.register()\n".cstring())
    @g_resources_register(ptr)

  fun _final() => None
    if (ptr.is_null()) then
      @printf("GResource._final() called on null\n".cstring())
    else
      @printf("GResource._final() called\n".cstring())
      @g_resource_unref(ptr)
    end
