use "debug"
use "actor_pinning"

use "../../Gtk"
use "../../Gtk/Application"
use "../../Gtk/Builder"
use "../../Gtk/ApplicationWindow"
use "../../Gtk/Button"
use "../../Gtk/Label"

class AppState is GtkPony
  var name: String val
  var gtkapplication: (GtkApplication tag | None) = None
  var counter_value: USize = 0

  new create(name': String val) =>
    name = name'

  fun ref set_application(gtkapplication': GtkApplication tag) =>
    gtkapplication = gtkapplication'

  fun get_name(): String val => name

  fun activate(): None =>
    Debug.err("I'm in the AppState.activate() callback\n")
    try
      let builder: GtkBuilder = GtkBuilder.new_from_string(UI())?
      build_ui(builder)?
    else
      Debug.err("I failed to parse my GtkBuilder XML")
    end

  fun build_ui(builder: GtkBuilder)? =>
    try
      let window: GtkApplicationWindow = GtkApplicationWindow.new_from_builder(builder, "window")?
      match gtkapplication
      | let app: GtkApplication tag => window.register_application(app)
        window.set_visible(true)
      else
        Debug.err("We did not have a valid GtkApplication to link")
        error
      end
    else
      Debug.err("Unable to find GtkApplicationWindow id=\"window\" in Builder")
      error
    end






primitive UI
  fun apply(): String val =>
"""
<?xml version='1.0' encoding='UTF-8'?>
<!-- Created with Cambalache 0.94.0 -->
<interface>
  <!-- interface-name ttt.ui -->
  <requires lib="gtk" version="4.12"/>
  <object class="GtkApplicationWindow" id="window">
    <child>
      <object class="GtkBox">
        <child>
          <object class="GtkButton" id="button_increment">
            <property name="label">increment</property>
          </object>
        </child>
        <child>
          <object class="GtkButton" id="button_decrement">
            <property name="label">decrement</property>
          </object>
        </child>
        <child>
          <object class="GtkLabel" id="label">
            <property name="label">Count: X</property>
          </object>
        </child>
      </object>
    </child>
  </object>
</interface>
"""
