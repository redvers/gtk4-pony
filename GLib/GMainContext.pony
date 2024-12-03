use "lib:glib-2.0"
use @g_main_context_default[Pointer[GMainContext]]()
use @g_main_context_iteration[I32](me: Pointer[GMainContext], mayblock: I32)

class GMainContext // Opaque
  var ptr: Pointer[GMainContext]

  new default() =>
    ptr = @g_main_context_default()

  fun ref iteration(mayblock: Bool) =>
    if (mayblock) then
      @g_main_context_iteration(ptr, 1)
    else
      @g_main_context_iteration(ptr, 0)
    end

