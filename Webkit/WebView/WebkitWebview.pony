use "lib:webkitgtk-6.0"
use "../../Gtk/Widget"
use "../../GObject/Object"

use @printf[U32](fmt: Pointer[U8] tag, ...)
use @webkit_web_view_new[Pointer[GObject] tag]()
use @webkit_web_view_load_uri[None](webview: Pointer[GObject] tag, uri: Pointer[U8] tag)

class WebkitWebView is GtkWidgetInterface
  var ptr: Pointer[GObject] tag

  new create() =>
    ptr = @webkit_web_view_new()
    ref_sink(ptr)

  fun ref get_ptr(): Pointer[GObject] tag => ptr

  fun ref load_uri(uri: String val) =>
    @webkit_web_view_load_uri[None](ptr, uri.cstring())


  fun _final() =>
    @printf("WebkitWebview._final() called\n".cstring())
//    GObject.unref(ptr)
