use "lib:gtk-4"
use "gobject"
use "gio"

use "../Widget"
use "../Builder"

use @printf[U32](fmt: Pointer[U8] tag, ...)
use @gtk_box_new[GObjectStruct](orientation: I32, spacing: I32)
/*
use @gtk_box_append[None](gbox: GObjectStruct tag, child: GObjectStruct tag)
use @gtk_box_prepend[None](gbox: GObjectStruct tag, child: GObjectStruct tag)
use @gtk_box_remove[None](gbox: GObjectStruct tag, child: GObjectStruct tag)

use @gtk_box_insert_child_after[None](gbox: GObjectStruct tag, child: GObjectStruct tag, sibling: GObjectStruct tag)
use @gtk_box_reorder_child_after[None](gbox: GObjectStruct tag, child: GObjectStruct tag, sibling: GObjectStruct tag)

use @gtk_box_get_homogeneous[I32](gbox: GObjectStruct tag)
use @gtk_box_set_homogeneous[None](gbox: GObjectStruct tag, homogeneous: I32)
use @gtk_box_get_spacing[I32](gbox: GObjectStruct tag)
use @gtk_box_set_spacing[None](gbox: GObjectStruct tag, spacing: I32)
*/

class GtkBox is GtkBoxInterface
  var ptr: GObjectStruct = GObjectStruct

  new create(orientation: I32, spacing: I32) =>
    ptr = @gtk_box_new(orientation, spacing)
    ref_sink()

  fun ref get_ptr(): GObjectStruct => ptr

  new new_from_builder(gbuilder: GtkBuilder, str: String val) ? =>
    ptr = gbuilder.get_object(str)?
    ref_sink()

  fun _final() =>
    @printf("GtkBox._final() called\n".cstring())
    GObject.unref(ptr)
/*
  fun gtk_box_append(gbox: GObjectStruct tag, child: GObjectStruct tag) =>
    @gtk_box_append(gbox, child)

  fun gtk_box_prepend(gbox: GObjectStruct tag, child: GObjectStruct tag) =>
    @gtk_box_prepend(gbox, child)

  fun gtk_box_remove(gbox: GObjectStruct tag, child: GObjectStruct tag) =>
    @gtk_box_remove(gbox, child)

  fun gtk_box_insert_child_after(gbox: GObjectStruct tag, child: GObjectStruct tag, sibling: GObjectStruct tag) =>
    @gtk_box_insert_child_after(gbox, child, sibling)

  fun gtk_box_reorder_child_after(gbox: GObjectStruct tag, child: GObjectStruct tag, sibling: GObjectStruct tag) =>
    @gtk_box_reorder_child_after(gbox, child, sibling)

  fun gtk_box_get_homogeneous(gbox: GObjectStruct tag): I32 =>
    @gtk_box_get_homogeneous(gbox)

  fun gtk_box_set_homogeneous(gbox: GObjectStruct tag, homogeneous: I32) =>
    @gtk_box_set_homogeneous(gbox, homogeneous)

  fun gtk_box_get_spacing(gbox: GObjectStruct tag): I32 =>
    @gtk_box_get_spacing(gbox)

  fun gtk_box_set_spacing(gbox: GObjectStruct tag, spacing: I32) =>
    @gtk_box_set_spacing(gbox, spacing)


*/
