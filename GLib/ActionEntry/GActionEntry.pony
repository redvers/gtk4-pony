use "../../Gtk"
use "../../GObject/Object"
use "../Variant"


struct GActionEntry
  var _name: Pointer[U8] tag = Pointer[U8]
  var _activate: @{(Pointer[GObject], Pointer[GVariant], GtkPony): None} = @{(action: Pointer[GObject], parameter: Pointer[GVariant], data: GtkPony): None => None}
  var _parameter_type: Pointer[U8] tag = Pointer[U8]
  var _state: Pointer[U8] tag = Pointer[U8]
  var _change_state: @{(Pointer[GObject], Pointer[GVariant], GtkPony): None} = @{(action: Pointer[GObject], parameter: Pointer[GVariant], data: GtkPony): None => None}
  var _pad0: U64 = U64(0)
  var _pad1: U64 = U64(0)
  var _pad2: U64 = U64(0)

  fun ref set_name(name: String val) => _name = name.cstring()
  fun ref set_activate(activate: @{(Pointer[GObject], Pointer[GVariant], GtkPony): None}) => _activate = activate





