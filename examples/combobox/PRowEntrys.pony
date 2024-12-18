use "gobject"

primitive PRowEntrys
  /*
   * GObject      *object,
                          guint         property_id,
                          const GValue *value,
                          GParamSpec   *pspec
   */

  fun @set_property(gobj: PRowEntrys, id: I32, gvalue: GValue, param: GParamSpecStruct) =>
    @printf("set_property_callback for id: %d".cstring(), id)
//    gvalue.ptr.set_pointer[Pointer[U8] tag]("Hello World".cstring())

  fun @get_property(gobj: PRowEntrys, id: I32, gvalue: GValue, param: GParamSpecStruct) =>
    @printf("get_property_callback for id: %d".cstring(), id)

