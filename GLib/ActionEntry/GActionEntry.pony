use "../../Gtk"
use "gobject"
use "../../../glib2-pony/glib"

use @printf[I32](fmt: Pointer[U8] tag, ...)

struct GActionEntry[A: Any]
  var _name: Pointer[U8] tag = Pointer[U8]
  var _activate: @{(Pointer[GObject], Pointer[GVariant], A): None} = @{(action: Pointer[GObject], parameter: Pointer[GVariant], data: A): None => None}
  var _parameter_type: Pointer[U8] tag = Pointer[U8]
  var _state: Pointer[U8] tag = Pointer[U8]
  var _change_state: @{(Pointer[GObject], Pointer[GVariant], GtkPony): None} = @{(action: Pointer[GObject], parameter: Pointer[GVariant], data: GtkPony): None => None}
  var _pad0: U64 = U64(0)
  var _pad1: U64 = U64(0)
  var _pad2: U64 = U64(0)

  fun ref set_name(name: String val) => _name = name.cstring()
  fun ref set_activate(activate: @{(Pointer[GObject], Pointer[GVariant], A): None}) =>  _activate = activate



