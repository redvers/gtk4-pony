use "../Widget"

trait GtkBoxInterface is GtkWidgetInterface
  fun ref append(child: GtkWidgetInterface) =>
    GtkBoxs.gtk_box_append(get_ptr(), child.get_ptr())

  fun ref prepend(child: GtkWidgetInterface) =>
    GtkBoxs.gtk_box_prepend(get_ptr(), child.get_ptr())

  fun ref remove(child: GtkWidgetInterface) =>
    GtkBoxs.gtk_box_remove(get_ptr(), child.get_ptr())

  fun ref insert_child_after(child: GtkWidgetInterface, sibling: GtkWidgetInterface) =>
    GtkBoxs.gtk_box_insert_child_after(get_ptr(), child.get_ptr(), sibling.get_ptr())
  fun ref reorder_child_after(child: GtkWidgetInterface, sibling: GtkWidgetInterface) =>
    GtkBoxs.gtk_box_insert_child_after(get_ptr(), child.get_ptr(), sibling.get_ptr())

  fun ref get_homogeneous(): Bool =>
    if (GtkBoxs.gtk_box_get_homogeneous(get_ptr()) == 0) then false else true end

  fun ref set_homogeneous(homogeneous: Bool) => None
    if (homogeneous) then
      GtkBoxs.gtk_box_set_homogeneous(get_ptr(), 1)
    else
      GtkBoxs.gtk_box_set_homogeneous(get_ptr(), 0)
    end

  fun ref get_spacing():I32 =>
    GtkBoxs.gtk_box_get_spacing(get_ptr())

  fun ref set_spacing(spacing: I32) => None
    GtkBoxs.gtk_box_set_spacing(get_ptr(), spacing)
