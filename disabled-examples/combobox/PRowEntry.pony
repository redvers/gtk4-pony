use "gio"
use "glib"
use "gobject"

//use @g_type_name[Pointer[U8]](gtype: U64)
//use @g_type_from_name[U64](name: Pointer[U8] tag)
use @g_object_new[PRowEntryStruct](gtype: U64, first: Pointer[U8] tag, ...)
use @g_param_spec_string[NullablePointer[GParamSpecStruct]](name: Pointer[U8] tag, nick: Pointer[U8] tag, blurb: Pointer[U8] tag, default_value: Pointer[U8] tag, flags: I32)
use @g_object_class_install_property[None](oclass: NullablePointer[GObjectClassStruct] tag, propertyid: U32, pspec: Pointer[None] tag)
//use @g_param_spec_pointer[NullablePointer[GParamSpecS]](name: Pointer[U8] tag, nick: Pointer[U8] tag, blurb: Pointer[U8] tag, flags: I32)
//use @g_param_spec_char[NullablePointer[GParamSpecS]](name: Pointer[U8] tag, nick: Pointer[U8] tag, blurb: Pointer[U8] tag, min: U8, max: U8, default: U8, flags: I32)

class PRowEntry is GObjectInterface
  var ptr: PRowEntryStruct
  var gtype: U64 = 0

  fun ref get_ptr(): GObjectStruct =>
    ptr.parent_instance

  new create(app: GtkAppState) =>
    gtype = GType.from_name("PRowEntry")
    if (gtype == 0) then
      let gtypeinfo: GTypeInfo[GtkAppState] = GTypeInfo[GtkAppState](app)
      gtypeinfo.ptr.class_size = 1088 // No methods, so same as GObject
      gtypeinfo.ptr.instance_size = 256
      gtypeinfo.ptr.n_preallocs = 0
      gtypeinfo.ptr.class_init = this~class_init()
      gtypeinfo.ptr.instance_init = this~instance_init()

      gtype = GType.register_static[GtkAppState]("PRowEntry", "GObject", gtypeinfo)
    end

//    ptr = @g_object_new(gtype, Pointer[U8])
//    ptr = GObject.init[PRowEntryStruct]("PRowEntry")
//    GObject.ref_sink(get_ptr())


  fun @instance_init(instance: PRowEntryStruct, gotc: Pointer[None]) => None
    instance.data = Array[GValue].create(16)
    try
      var default_id0: GValue = GValue.init_from_name("gpointer")?
      instance.data.push(default_id0)
    end
    @printf("SizE: %d\n".cstring(), instance.data.size())






  fun @class_init(gobj: PRowEntryClassStruct, data: String val) =>
    gobj.parent_class.set_property = PRowEntrys~set_property()
    gobj.parent_class.get_property = PRowEntrys~get_property()

    let g: GParamSpecString = GParamSpecString("name", "nick", "blurb", "default value")
    @g_object_class_install_property(NullablePointer[GObjectClassStruct](gobj.parent_class), U32(1), NullablePointer[GParamSpecStringStruct](g.ptr))


  fun ref get_type(): U64 => gtype
/*
  fun ref get_property_string(name: String val) =>
    var gv: GValue = GValue
//    var gclass: NullablePointer[GTypeClassS] = ptr.parent_instance.g_type_instance.g_class
//    var g_type: U64 = gclass.apply()?.g_type
//    @printf("g_type of gvalue: %d\n".cstring())
    gv.init(64)
//    var st: String iso = "My data".clone()
//    gv.set_pointer[String val](consume st)
    @g_object_get_property(NullablePointer[PRowEntryStruct](ptr), name.cstring(), gv.ptr)
//    @printf("gchar: %d\n".cstring(), @g_type_from_name("gchar".cstring()))
*/
