use "../Widget"

interface GtkEditableInterface is GtkWidgetInterface
  fun ref set_editable(editable: Bool) =>
    if (editable) then
      GtkEditables.set_editable(get_ptr(), 1)
    else
      GtkEditables.set_editable(get_ptr(), 1)
    end

