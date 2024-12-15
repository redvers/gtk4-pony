use "gobject"

primitive PRowEntryP
  /*
   * GObject      *object,
                          guint         property_id,
                          const GValue *value,
                          GParamSpec   *pspec
   */
  fun @set_property(gobj: GObjectS, id: I32, gvalue: GValueS, param: GParamSpecS) =>
    @printf("set_property_callback for id: %d".cstring(), id)
//    gvalue.ptr.set_pointer("Hello World".cstring())

  fun @get_property(gobj: GObjectS, id: I32, gvalue: GValueS, param: GParamSpecS) =>
    @printf("set_property_callback for id: %d".cstring(), id)
