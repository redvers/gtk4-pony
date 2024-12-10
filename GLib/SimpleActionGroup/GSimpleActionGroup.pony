use "../../GLib/Variant"
use "../../GLib/Object"
use "../SimpleAction"

use @g_simple_action_group_new[Pointer[GObject]]()
use @g_simple_action_group_insert[None](simple: Pointer[GObject] tag, action: Pointer[GObject] tag)


class GSimpleActionGroup is GObjectInterface
  var ptr: Pointer[GObject] tag

  new create() =>
    ptr = @g_simple_action_group_new()
    ref_sink()

  fun insert(action: GSimpleAction val) =>
    @g_simple_action_group_insert(ptr, action.get_ptr())

  fun get_ptr(): Pointer[GObject] tag => ptr


/*
 *  This works
 * let aboutptr: GVariant = GVariant.create[GtkControllerBuilder]("x", this)
 * let tptr: GtkControllerBuilder tag = aboutptr.apply[GtkControllerBuilder tag]("x")?
 */

