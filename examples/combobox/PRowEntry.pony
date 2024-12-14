use "gio"
use "glib"
use "gobject"

use @g_object_new[PRowEntryS](gtype: U64, first: Pointer[U8] tag, ...)
use @g_type_from_name[U64](name: Pointer[U8] tag)
use @g_type_register_static[U64](parenttype: U64, typename: Pointer[U8] tag, info: NullablePointer[GTypeInfoS] tag, flags: I32)

class PRowEntry is GObjectInterface
  var ptr: PRowEntryS
  var gtype: U64

  new create() =>
    gtype = @g_type_from_name("PRowEntry".cstring())
    if (gtype == 0) then
      let gtypeinfo: GTypeInfoS = GTypeInfoS
      gtypeinfo.class_size = 1088 // No methods, so same as GObject
      gtypeinfo.instance_size = 256
      gtypeinfo.n_preallocs = 0

      gtype = @g_type_register_static(80, "PRowEntry".cstring(), NullablePointer[GTypeInfoS](gtypeinfo), 0)
    end

    ptr = @g_object_new(gtype, Pointer[U8])
    GObject.ref_sink(get_ptr())

  fun ref get_ptr(): NullablePointer[GObjectS] =>
    NullablePointer[GObjectS](ptr.parent_instance)

  fun ref get_type(): U64 => gtype

