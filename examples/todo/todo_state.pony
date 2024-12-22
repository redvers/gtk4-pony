use "gobject"
use "debug"
use "actor_pinning"

use "../../Gtk"
use "../../Gtk/Builder"
use "../../Gtk/Application"
use "../../Gtk/ApplicationWindow"
use "../../Gtk/ToggleButton"
use "../../Gtk/Button"
use "../../Gtk/Label"
use "../../Gtk/Box"

class ToDoState is GtkPony
  var name: String val
  var gtkapplication: (GtkApplication tag | None) = None
  var counter_value: ISize = 0
  var label: (GtkLabel | None) = None
  var filterbuttons: (FilterButtons | None) = None

  new create(name': String val) =>
    name = name'

  fun ref set_application(gtkapplication': GtkApplication tag) =>
    gtkapplication = gtkapplication'

  fun get_name(): String val => name

  fun ref activate(): None =>
    try
      let builder: GtkBuilder = GtkBuilder.new_from_string(UI())?
      build_ui(builder)?
      label = GtkLabel.new_from_builder(builder, "label")?
    else
      Debug.err("I failed to parse my GtkBuilder XML")
    end

  fun ref build_ui(builder: GtkBuilder)? =>
    let window: GtkApplicationWindow =
      try
        GtkLabel.new_from_builder(builder, "label")?
        GtkApplicationWindow.new_from_builder(builder, "window")?
      else
        Debug.err("I was unable to find the GtkApplicationWindow or GtkLabel")
        error
      end
      try
        filterbuttons = FilterButtons(
          GtkToggleButton.new_from_builder(builder, "all")?,
          GtkToggleButton.new_from_builder(builder, "active")?,
          GtkToggleButton.new_from_builder(builder, "completed")?
        )
        Debug.out("I was unable to find the GtkToggleButtons")
        error
      end

    match gtkapplication
    | let app: GtkApplication tag => window.register_application(app)
    else
      Debug.err("We did not have a valid GtkApplication to link")
      error
    end
    window.set_visible(true)
/*
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


*/




primitive UI
  fun apply(): String val =>
"""
<?xml version='1.0' encoding='UTF-8'?>
<!-- Created with Cambalache 0.94.0 -->
<interface>
  <!-- interface-name ttt.ui -->
  <requires lib="gtk" version="4.12"/>
  <object class="GtkApplicationWindow" id="window">
    <property name="default-height">600</property>
    <property name="default-width">500</property>
    <property name="title">todo</property>
    <child>
      <object class="GtkBox">
        <property name="orientation">vertical</property>
        <child>
          <object class="GtkLabel">
            <property name="justify">center</property>
            <property name="label">&lt;span foreground="red" size="600%"&gt;todo&lt;/span&gt;</property>
            <property name="use-markup">True</property>
          </object>
        </child>
        <child>
          <object class="GtkScrolledWindow" id="scrollwindow">
            <property name="vexpand">True</property>
            <child>
              <object class="GtkBox">
                <property name="valign">start</property>
                <child>
                  <object class="GtkCheckButton"/>
                </child>
                <child>
                  <object class="GtkEntry">
                    <property name="hexpand">True</property>
                    <property name="margin-bottom">2</property>
                    <property name="margin-end">1</property>
                    <property name="margin-start">1</property>
                    <property name="margin-top">2</property>
                    <property name="placeholder-text">What needs to be done?</property>
                  </object>
                </child>
                <child>
                  <object class="GtkButton">
                    <property name="child">
                      <object class="GtkImage">
                        <property name="icon-name">application-exit-rtl-symbolic</property>
                        <property name="icon-size">large</property>
                      </object>
                    </property>
                  </object>
                </child>
              </object>
            </child>
          </object>
        </child>
        <child>
          <object class="GtkCenterBox">
            <property name="halign">baseline-fill</property>
            <property name="hexpand">True</property>
            <child type="start">
              <object class="GtkLabel" id="label">
                <property name="halign">start</property>
                <property name="label">&lt;span size="large"&gt;0 Items Left!&lt;/span&gt;</property>
                <property name="margin-bottom">1</property>
                <property name="margin-end">2</property>
                <property name="margin-start">2</property>
                <property name="margin-top">1</property>
                <property name="use-markup">True</property>
              </object>
            </child>
            <child type="end">
              <object class="GtkButton" id="clear_completed">
                <property name="label">Clear Completed</property>
              </object>
            </child>
            <child type="center">
              <object class="GtkCenterBox">
                <property name="halign">center</property>
                <property name="valign">end</property>
                <child type="start">
                  <object class="GtkToggleButton" id="all">
                    <property name="hexpand">True</property>
                    <property name="label">All</property>
                  </object>
                </child>
                <child type="center">
                  <object class="GtkToggleButton" id="active">
                    <property name="hexpand">True</property>
                    <property name="label">Active</property>
                  </object>
                </child>
                <child type="end">
                  <object class="GtkToggleButton" id="completed">
                    <property name="hexpand">True</property>
                    <property name="label">Completed</property>
                  </object>
                </child>
              </object>
            </child>
          </object>
        </child>
      </object>
    </child>
  </object>
</interface>
"""
