use @g_error_free[None](g: GError tag)

struct GError
  var domain: U32 = 0
  var code: I32 = 0
  var message: Pointer[U8] ref = recover iso Pointer[U8] end

  fun dispose() => @g_error_free(this)
