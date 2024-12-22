use "../../Gtk/ToggleButton"

class FilterButtons
  var all: GtkToggleButton
  var active: GtkToggleButton
  var completed: GtkToggleButton

  new create(all': GtkToggleButton, active': GtkToggleButton, completed': GtkToggleButton) =>
    all = all'
    active = active'
    completed = completed'
