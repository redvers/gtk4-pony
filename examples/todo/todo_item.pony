use "gobject"

use "../../Gtk/Box"
use "../../Gtk/Entry"
use "../../Gtk/Button"
use "../../Gtk/CheckButton"

class ToDoItem
  var gbox: GtkBox
  var checkbutton: GtkCheckButton
  var entry: GtkEntry
  var button: GtkButton
  var state: (ToDoRW | ToDoRO | ToDoComplete) = ToDoRW
  var todostate: ToDoState
//  var image: GtkImage
//
  new create(todostate': ToDoState) =>
    todostate = todostate'
    gbox = GtkBox(0, 1)
    checkbutton = GtkCheckButton
    entry = GtkEntry
    entry.set_hexpand(true)
    button = GtkButton
    button.set_icon_name("application-exit-rtl-symbolic")

    entry.set_property_string("placeholder-text", "What needs to be done?")

    gbox.append(checkbutton)
    gbox.append(entry)
    gbox.append(button)

    entry.signal_connect_data[ToDoItem]("activate", this~activated(), this)

  fun @activated(gobject: GObjectStruct, todoitem: ToDoItem) =>
    @printf("I've been activated\n".cstring())
    let gtkentry: GtkEntry = GtkEntry.new_from_ptr(gobject)
    gtkentry.set_sensitive(false)
    //

primitive ToDoRW
primitive ToDoRO
primitive ToDoComplete
