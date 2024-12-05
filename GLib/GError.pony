
struct GError
  var domain: U32 = 0
  var code: U32 = 0
  var message: Pointer[U8] ref = Pointer[U8]

