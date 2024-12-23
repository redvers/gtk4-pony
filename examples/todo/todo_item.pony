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
//  var image: GtkImage
//
  new create() =>
    gbox = GtkBox(0, 1)
    checkbutton = GtkCheckButton
    entry = GtkEntry
    entry.set_hexpand(true)
    button = GtkButton

    gbox.append(checkbutton)
    gbox.append(entry)
    gbox.append(button)

