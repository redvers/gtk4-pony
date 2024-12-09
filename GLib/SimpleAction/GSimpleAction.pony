use "../../GLib/Variant"
use "../../GObject/Object"

use @g_simple_action_new[Pointer[GObject]](name: Pointer[U8] tag, parametertype: Pointer[None] tag)

class GSimpleAction is GObjectInterface
  var ptr: Pointer[GObject] tag

  new create(name: String, data: GVariant) =>
    ptr =@g_simple_action_new(name.cstring(), data.ptr)

  fun get_ptr(): Pointer[GObject] tag => ptr


/*
 *  This works
 * let aboutptr: GVariant = GVariant.create[GtkControllerBuilder]("x", this)
 * let tptr: GtkControllerBuilder tag = aboutptr.apply[GtkControllerBuilder tag]("x")?
 */

