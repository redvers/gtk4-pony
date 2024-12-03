use "debug"

use "../../GObject/Object"

use @gtk_widget_set_visible[None](widget: Pointer[GObject], visible: I32)

interface GtkWidgetInterface is GObjectInterface
  fun ref get_ptr(): Pointer[GObject]
  fun ref set_visible(visible: Bool) => None
    GtkWidgetPrimitives.set_visible(get_ptr(), visible)

primitive GtkWidgetPrimitives
  fun set_visible(ptr: Pointer[GObject], visible: Bool) =>
    if (visible) then
      @gtk_widget_set_visible(ptr, 1)
    else
      @gtk_widget_set_visible(ptr, 0)
    end
