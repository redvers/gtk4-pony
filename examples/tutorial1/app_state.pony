use "gobject"
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
  var counter_value: ISize = 0
  var label: (GtkLabel | None) = None

  new create(name': String val) =>
    name = name'

  fun ref set_application(gtkapplication': GtkApplication tag) =>
    gtkapplication = gtkapplication'

  fun get_name(): String val => name

  fun ref activate(): None =>
    Debug.err("I'm in the AppState.activate() callback\n")
    try
      let builder: GtkBuilder = GtkBuilder.new_from_string(UI())?
      build_ui(builder)?
      hookup_signals(builder)?
    else
      Debug.err("I failed to parse my GtkBuilder XML")
    end

  fun ref build_ui(builder: GtkBuilder)? =>
    let window: GtkApplicationWindow =
      try
        label = GtkLabel.new_from_builder(builder, "label")?
        refresh_display()
        GtkApplicationWindow.new_from_builder(builder, "window")?
      else
        Debug.err("I was unable to find the GtkApplicationWindow or GtkLabel")
        error
      end

    match gtkapplication
    | let app: GtkApplication tag => window.register_application(app)
    else
      Debug.err("We did not have a valid GtkApplication to link")
      error
    end
    window.set_visible(true)

  fun ref hookup_signals(builder: GtkBuilder)? =>
    let button_increment: GtkButton = GtkButton.new_from_builder(builder, "button_increment")?
    let button_decrement: GtkButton = GtkButton.new_from_builder(builder, "button_decrement")?
    button_increment.signal_connect_data[AppState]("clicked", this~raw_increment_clicked(), this)
    button_decrement.signal_connect_data[AppState]("clicked", this~raw_decrement_clicked(), this)

  fun @raw_increment_clicked(button: GObjectStruct, app: AppState): None =>
    app.counter_value = app.counter_value + 1
    app.refresh_display()

  fun @raw_decrement_clicked(button: GObjectStruct, app: AppState): None =>
    app.counter_value = app.counter_value - 1
    app.refresh_display()

  fun ref refresh_display() =>
    match label
    | let l: GtkLabel => l.set_label("Count: " + counter_value.string())
    else
      Debug.out("My counter value is: " + counter_value.string())
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
