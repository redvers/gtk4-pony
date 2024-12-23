use "gobject"

use "../../Gtk/ToggleButton"
use @printf[I32](fmt: Pointer[U8] tag, ...)

class FilterButtons
  var all: GtkToggleButton
  var active: GtkToggleButton
  var completed: GtkToggleButton
  var todostate: ToDoState

  new create(all': GtkToggleButton, active': GtkToggleButton, completed': GtkToggleButton, todostate': ToDoState) =>
    all = all'
    active = active'
    completed = completed'
    todostate = todostate'

    all.set_active(true)
    active.set_active(false)
    completed.set_active(false)

    active.set_group(all)
    completed.set_group(all)

    all.signal_connect_data[ToDoState]("toggled", this~all_toggled(), todostate)
    active.signal_connect_data[ToDoState]("toggled", this~active_toggled(), todostate)
    completed.signal_connect_data[ToDoState]("toggled", this~completed_toggled(), todostate)

  fun @all_toggled(gobj: GObjectStruct, todo: ToDoState) =>
    @printf("all toggled: \n".cstring())
    let toggleButton = GtkToggleButton.new_from_ptr(gobj)
    if (toggleButton.get_active()) then
      todo.state = ToggleAll
      todo.state_refresh()
    end

  fun @active_toggled(gobj: GObjectStruct, todo: ToDoState) =>
    @printf("active toggled: \n".cstring())
    let toggleButton = GtkToggleButton.new_from_ptr(gobj)
    if (toggleButton.get_active()) then
      todo.state = ToggleActive
      todo.state_refresh()
    end

  fun @completed_toggled(gobj: GObjectStruct, todo: ToDoState) =>
    @printf("completed toggled: \n".cstring())
    let toggleButton = GtkToggleButton.new_from_ptr(gobj)
    if (toggleButton.get_active()) then
      todo.state = ToggleCompleted
      todo.state_refresh()
    end


