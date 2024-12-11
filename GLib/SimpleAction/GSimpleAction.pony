use "debug"
use "../../GLib/Variant"
use "../../GLib/Object"
use @printf[I32](fmt: Pointer[U8] tag, ...)

use @g_simple_action_new[Pointer[GObject]](name: Pointer[U8] tag, parametertype: Pointer[None] tag)
use @g_simple_action_set_enabled[None](action: Pointer[GObject] tag, enabled: I32)

class GSimpleAction is GObjectInterface
  var ptr: Pointer[GObject] tag

  new create(name: String, data: GVariant val) =>
    ptr =@g_simple_action_new(name.cstring(), data.get_ptr())
//    @g_simple_action_set_enabled(ptr, 1)
    ref_sink()

  fun get_ptr(): Pointer[GObject] tag => ptr

  fun _final() =>
    @printf("GSimpleAction._final()\n".cstring())
    GObject.unref(ptr)

/*
 *  This works
 * let aboutptr: GVariant = GVariant.create[GtkControllerBuilder]("x", this)
 * let tptr: GtkControllerBuilder tag = aboutptr.apply[GtkControllerBuilder tag]("x")?
 */

