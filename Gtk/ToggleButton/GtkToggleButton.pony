use "debug"
use "lib:gtk-4"
use "gobject"
use "../Builder"
use "../Button"

use @printf[U32](fmt: Pointer[U8] tag, ...)
use @gtk_toggle_button_new[GObjectStruct]()
use @g_signal_connect_data[U64](instance: GObjectStruct tag, signal: Pointer[U8] tag, ...)
use @gtk_toggle_button_get_active[I32](togglebutton: GObjectStruct tag)
use @gtk_toggle_button_set_active[None](togglebutton: GObjectStruct tag, isactive: I32)
use @gtk_toggle_button_set_group[None](togglebutton: GObjectStruct tag, group: GObjectStruct tag)
use @gtk_toggle_button_toggled[None](togglebutton: GObjectStruct tag)

class GtkToggleButton is GtkToggleButtonInterface
  var ptr: GObjectStruct

  new create() =>
    ptr = @gtk_toggle_button_new()
    ref_sink()

  new new_from_ptr(gobj': GObjectStruct) =>
    ptr = gobj'
    ref_sink()

  new new_from_builder(gbuilder: GtkBuilder, str: String val) ? =>
    ptr = gbuilder.get_object(str)?
    ref_sink()

  fun ref get_ptr(): GObjectStruct => ptr

  fun get_active(): Bool =>
    if (@gtk_toggle_button_get_active(ptr) == 0) then
      false
    else
      true
    end

  fun set_active(state: Bool) =>
    if (state) then
      @gtk_toggle_button_set_active(ptr, 1)
    else
      @gtk_toggle_button_set_active(ptr, 0)
    end

  fun set_group(group: GtkToggleButton) =>
    @gtk_toggle_button_set_group(ptr, group.ptr)

  fun _final() =>
    GObject.unref(ptr)
