
primitive UI
  fun txt(): String val =>
    """
<?xml version="1.0" encoding="UTF-8"?>
<interface>
  <menu id="gear_menu_model">
    <section>
      <item>
        <attribute name="label" translatable="yes">Get Busy</attribute>
        <attribute name="action">win.busy</attribute>
      </item>
      <item>
        <attribute name="label" translatable="yes">Fullscreen</attribute>
        <attribute name="action">win.fullscreen</attribute>
      </item>
      <submenu>
        <attribute name="label" translatable="yes">Style</attribute>
        <section>
          <item>
            <attribute name="label" translatable="yes">Current</attribute>
            <attribute name="action">win.theme</attribute>
            <attribute name="target">current</attribute>
          </item>
          <item>
            <attribute name="label" translatable="yes">Default</attribute>
            <attribute name="action">win.theme</attribute>
            <attribute name="target">default</attribute>
          </item>
          <item>
            <attribute name="label" translatable="yes">Dark</attribute>
            <attribute name="action">win.theme</attribute>
            <attribute name="target">dark</attribute>
          </item>
          <item>
            <attribute name="label" translatable="yes">Highcontrast</attribute>
            <attribute name="action">win.theme</attribute>
            <attribute name="target">hc</attribute>
          </item>
          <item>
            <attribute name="label" translatable="yes">Highcontrast inverse</attribute>
            <attribute name="action">win.theme</attribute>
            <attribute name="target">hc-dark</attribute>
          </item>
        </section>
      </submenu>
      <item>
        <attribute name="label" translatable="yes">Transition Pages</attribute>
        <attribute name="action">win.transition</attribute>
      </item>
      <item>
        <attribute name="custom">transition-speed</attribute>
      </item>
    </section>
    <section>
      <item>
        <attribute name="label" translatable="yes">_Inspector</attribute>
        <attribute name="action">app.inspector</attribute>
      </item>
      <item>
        <attribute name="label" translatable="yes">_Keyboard Shortcuts</attribute>
        <attribute name="action">app.shortcuts</attribute>
      </item>
      <item>
        <attribute name="label" translatable="yes">_About Widget Factory</attribute>
        <attribute name="action">app.about</attribute>
      </item>
    </section>
  </menu>
  <menu id="dinner_menu">
    <section>
      <item>
        <attribute name="label" translatable="yes">_Steak</attribute>
        <attribute name="action">app.main</attribute>
        <attribute name="target">steak</attribute>
      </item>
      <item>
        <attribute name="label" translatable="yes">_Pizza</attribute>
        <attribute name="action">app.main</attribute>
        <attribute name="target">pizza</attribute>
      </item>
    </section>
    <section>
      <item>
        <attribute name="label" translatable="yes">Wine</attribute>
        <attribute name="action">app.wine</attribute>
      </item>
      <item>
        <attribute name="label" translatable="yes">Beer</attribute>
        <attribute name="action">app.beer</attribute>
      </item>
      <item>
        <attribute name="label" translatable="yes">Water</attribute>
        <attribute name="action">app.water</attribute>
      </item>
    </section>
    <section>
      <submenu>
        <attribute name="label" translatable="yes">Dessert</attribute>
        <section>
          <item>
            <attribute name="label" translatable="yes">Brownies</attribute>
            <attribute name="action">app.dessert</attribute>
            <attribute name="target">brownies</attribute>
          </item>
          <item>
            <attribute name="label" translatable="yes">Banana Sundae</attribute>
            <attribute name="action">app.dessert</attribute>
            <attribute name="target">sundae</attribute>
          </item>
          <item>
            <attribute name="label" translatable="yes">Lemon Bars</attribute>
            <attribute name="action">app.dessert</attribute>
            <attribute name="target">bars</attribute>
          </item>
        </section>
      </submenu>
      <section>
        <attribute name="display-hint">horizontal-buttons</attribute>
        <item>
          <attribute name="label" translatable="yes">Cash</attribute>
          <attribute name="action">app.pay</attribute>
          <attribute name="target">cash</attribute>
          <attribute name="verb-icon">document-save-symbolic</attribute>
        </item>
        <item>
          <attribute name="label" translatable="yes">Credit Card</attribute>
          <attribute name="action">app.pay</attribute>
          <attribute name="target">card</attribute>
          <attribute name="verb-icon">document-send-symbolic</attribute>
        </item>
        <item>
          <attribute name="label" translatable="yes">Cheque</attribute>
          <attribute name="action">app.pay</attribute>
          <attribute name="target">cheque</attribute>
          <attribute name="verb-icon">document-save-as-symbolic</attribute>
        </item>
      </section>
    </section>
  </menu>
  <object class="GtkAdjustment" id="adjustment1">
    <property name="upper">100</property>
    <property name="value">50</property>
    <property name="step-increment">1</property>
    <property name="page-increment">10</property>
  </object>
  <object class="GtkAdjustment" id="adjustment2">
    <property name="upper">1000</property>
    <property name="lower">1</property>
    <property name="value">50</property>
    <property name="step-increment">1</property>
    <property name="page-increment">10</property>
  </object>
  <object class="GtkAdjustment" id="adjustment3">
    <property name="upper">4</property>
    <property name="value">2</property>
    <property name="step-increment">1</property>
    <property name="page-increment">1</property>
  </object>
  <object class="GtkAdjustment" id="pg_adjustment">
    <property name="upper">99</property>
    <property name="lower">1</property>
    <property name="value">2</property>
    <property name="step-increment">1</property>
    <property name="page-increment">10</property>
  </object>
  <object class="GtkAdjustment" id="pg_adjustment2">
    <property name="upper">99</property>
    <property name="lower">1</property>
    <property name="value">4</property>
    <property name="step-increment">1</property>
    <property name="page-increment">10</property>
  </object>
  <object class="GtkListStore" id="liststore1">
    <columns>
      <column type="gboolean"/>
      <column type="gchararray"/>
      <column type="gchararray"/>
      <column type="gchararray"/>
      <column type="gboolean"/>
    </columns>
    <data>
      <row>
        <col id="0">True</col>
        <col id="1">emblem-default-symbolic</col>
        <col id="2" translatable="yes">Andrea</col>
        <col id="3" translatable="yes">Cimi</col>
        <col id="4">False</col>
      </row>
      <row>
        <col id="0">False</col>
        <col id="1">emblem-important-symbolic</col>
        <col id="2" translatable="yes">Otto</col>
        <col id="3" translatable="yes">chaotic</col>
        <col id="4">False</col>
      </row>
      <row>
        <col id="0">True</col>
        <col id="1">weather-clear-night-symbolic</col>
        <col id="2" translatable="yes">Orville</col>
        <col id="3" translatable="yes">Redenbacher</col>
        <col id="4">False</col>
      </row>
      <row>
        <col id="0">True</col>
        <col id="1">face-monkey-symbolic</col>
        <col id="2" translatable="yes">Benjamin</col>
        <col id="3" translatable="yes">Company</col>
        <col id="4">True</col>
      </row>
    </data>
  </object>
  <object class="GtkEntryCompletion" id="name_completion">
    <property name="model">liststore1</property>
    <property name="text-column">2</property>
    <property name="inline-completion">1</property>
    <property name="popup-single-match">0</property>
    <property name="inline-selection">1</property>
    <child>
      <object class="GtkCellRendererText"/>
      <attributes>
        <attribute name="text">2</attribute>
      </attributes>
    </child>
  </object>
  <object class="GtkListStore" id="lrmodel">
    <columns>
      <column type="gchararray"/>
    </columns>
    <data>
      <row>
        <col id="0">Left</col>
      </row>
      <row>
        <col id="0">Middle</col>
      </row>
      <row>
        <col id="0">Right</col>
      </row>
    </data>
  </object>
  <object class="GtkTextTagTable" id="tags">
    <child type="tag">
      <object class="GtkTextTag">
        <property name="name">bold</property>
        <property name="weight">800</property>
      </object>
    </child>
    <child type="tag">
      <object class="GtkTextTag">
        <property name="name">italic</property>
        <property name="style">2</property>
      </object>
    </child>
    <child type="tag">
      <object class="GtkTextTag">
        <property name="name">underline</property>
        <property name="underline">1</property>
      </object>
    </child>
  </object>
  <object class="GtkTextBuffer" id="textbuffer1">
    <property name="tag-table">tags</property>
    <property name="text">Lorem ipsum dolor sit amet, consectetur adipiscing elit.
Nullam fringilla, est ut feugiat ultrices, elit lacus ultricies nibh, id commodo tortor nisi id elit.
Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.
Morbi vel elit erat. Maecenas dignissim, dui et pharetra rutrum, tellus lectus rutrum mi, a convallis libero nisi quis tellus.
Nulla facilisi. Nullam eleifend lobortis nisl, in porttitor tellus malesuada vitae.
Aenean lacus tellus, pellentesque quis molestie quis, fringilla in arcu.
Duis elementum, tellus sed tristique semper, metus metus accumsan augue, et porttitor augue orci a libero.
Ut sed justo ac felis placerat laoreet sed id sem. Proin mattis tincidunt odio vitae tristique.
Morbi massa libero, congue vitae scelerisque vel, ultricies vel nisl.
Vestibulum in tortor diam, quis aliquet quam. Praesent ut justo neque, tempus rutrum est.
Duis eu lectus quam. Vivamus eget metus a mauris molestie venenatis pulvinar eleifend nisi.
Nulla facilisi. Pellentesque at dolor sit amet purus dapibus pulvinar molestie quis neque.
Suspendisse feugiat quam quis dolor accumsan cursus.</property>
  </object>
  <object class="GtkTextBuffer" id="textbuffer2">
    <property name="text">* Translation updates:
 Aragonese
 Assamese
 Basque
 Brazilian Portuguese
 Dutch
 German
 Hebrew
 Hungarian
 Polish
 Portuguese
 Serbian
 Slovenian
 Spanish
 Uyghur</property>
  </object>
  <object class="GtkListStore" id="iconsmodel">
    <columns>
      <column type="gchararray"/>
    </columns>
    <data>
      <row>
        <col id="0">audio-headphones-symbolic</col>
      </row>
      <row>
        <col id="0">audio-speakers-symbolic</col>
      </row>
      <row>
        <col id="0">audio-input-microphone-symbolic</col>
      </row>
      <row>
        <col id="0">bookmark-new-symbolic</col>
      </row>
      <row>
        <col id="0">call-start-symbolic</col>
      </row>
      <row>
        <col id="0">call-stop-symbolic</col>
      </row>
      <row>
        <col id="0">camera-photo-symbolic</col>
      </row>
      <row>
        <col id="0">camera-web-symbolic</col>
      </row>
      <row>
        <col id="0">document-new-symbolic</col>
      </row>
      <row>
        <col id="0">document-open-recent-symbolic</col>
      </row>
      <row>
        <col id="0">document-open-symbolic</col>
      </row>
      <row>
        <col id="0">drive-harddisk-symbolic</col>
      </row>
      <row>
        <col id="0">drive-optical-symbolic</col>
      </row>
      <row>
        <col id="0">edit-clear-all-symbolic</col>
      </row>
      <row>
        <col id="0">edit-copy-symbolic</col>
      </row>
      <row>
        <col id="0">edit-cut-symbolic</col>
      </row>
      <row>
        <col id="0">edit-delete-symbolic</col>
      </row>
      <row>
        <col id="0">find-location-symbolic</col>
      </row>
      <row>
        <col id="0">format-indent-less-symbolic</col>
      </row>
      <row>
        <col id="0">format-indent-more-symbolic</col>
      </row>
      <row>
        <col id="0">format-justify-left-symbolic</col>
      </row>
      <row>
        <col id="0">format-justify-center-symbolic</col>
      </row>
      <row>
        <col id="0">format-justify-right-symbolic</col>
      </row>
      <row>
        <col id="0">network-wired-symbolic</col>
      </row>
      <row>
        <col id="0">network-wireless-symbolic</col>
      </row>
      <row>
        <col id="0">phone-symbolic</col>
      </row>
      <row>
        <col id="0">insert-image-symbolic</col>
      </row>
      <row>
        <col id="0">insert-link-symbolic</col>
      </row>
      <row>
        <col id="0">insert-object-symbolic</col>
      </row>
      <row>
        <col id="0">view-continuous-symbolic</col>
      </row>
      <row>
        <col id="0">view-dual-symbolic</col>
      </row>
      <row>
        <col id="0">view-fullscreen-symbolic</col>
      </row>
      <row>
        <col id="0">view-grid-symbolic</col>
      </row>
      <row>
        <col id="0">view-list-symbolic</col>
      </row>
      <row>
        <col id="0">view-paged-symbolic</col>
      </row>
      <row>
        <col id="0">weather-clear-night-symbolic</col>
      </row>
      <row>
        <col id="0">weather-few-clouds-night-symbolic</col>
      </row>
      <row>
        <col id="0">weather-fog-symbolic</col>
      </row>
      <row>
        <col id="0">weather-overcast-symbolic</col>
      </row>
      <row>
        <col id="0">weather-severe-alert-symbolic</col>
      </row>
      <row>
        <col id="0">weather-showers-symbolic</col>
      </row>
      <row>
        <col id="0">weather-snow-symbolic</col>
      </row>
    </data>
  </object>
  <object class="GtkTreeStore" id="charlemodel">
    <columns>
      <column type="gchararray"/>
      <column type="gchararray"/>
      <column type="gchararray"/>
      <column type="gboolean"/>
    </columns>
  </object>
  <object class="GtkApplicationWindow" id="window">
    <property name="title">GTK Widget Factory</property>
    <child type="titlebar">
      <object class="GtkHeaderBar" id="headerbar1">
        <child type="title">
          <object class="GtkStackSwitcher" id="stack_switcher">
            <property name="stack">toplevel_stack</property>
          </object>
        </child>
        <child type="end">
          <object class="GtkMenuButton" id="gear_menu_button">
            <property name="valign">3</property>
            <property name="focus-on-click">0</property>
            <property name="popover">
              <object class="GtkPopoverMenu" id="gear_menu">
                <property name="menu-model">gear_menu_model</property>
                <child type="transition-speed">
                  <object class="GtkScale">
                    <property name="adjustment">
                      <object class="GtkAdjustment">
                        <property name="upper">1000</property>
                        <property name="value">250</property>
                        <property name="step-increment">50</property>
                        <property name="page-increment">50</property>
                      </object>
                    </property>
                    <signal name="value-changed" handler="transition_speed_changed"/>
                  </object>
                </child>
              </object>
            </property>
            <property name="icon-name">open-menu-symbolic</property>
          </object>
        </child>
      </object>
    </child>
    <child>
      <object class="GtkBox" id="box1">
        <property name="orientation">1</property>
        <property name="margin-start">10</property>
        <property name="margin-end">10</property>
        <property name="margin-top">10</property>
        <property name="margin-bottom">10</property>
        <child>
          <object class="GtkStack" id="toplevel_stack">
            <property name="transition-duration">250</property>
            <property name="transition-type">1</property>
            <child>
              <object class="GtkStackPage">
                <property name="name">page1</property>
                <property name="title" translatable="1">Page _1</property>
                <property name="use-underline">1</property>
                <property name="child">
                  <object class="GtkBox" id="page1">
                    <property name="orientation">1</property>
                    <property name="spacing">10</property>
                    <child>
                      <object class="GtkBox" id="box2">
                        <property name="spacing">10</property>
                        <child>
                          <object class="GtkBox" id="box3">
                            <property name="orientation">1</property>
                            <property name="spacing">10</property>
                            <child>
                              <object class="GtkComboBoxText" id="comboboxtext1">
                                <property name="has-entry">1</property>
                                <child internal-child="entry">
                                  <object class="GtkEntry" id="comboboxtext-entry">
                                    <property name="text" translatable="1">comboboxentry</property>
                                  </object>
                                </child>
                                <items>
                                  <item>Donald Duck</item>
                                  <item>Mickey Mouse</item>
                                  <item>Jet McQuack</item>
                                </items>
                              </object>
                            </child>
                            <child>
                              <object class="GtkComboBoxText" id="comboboxtext2">
                                <property name="sensitive">0</property>
                                <property name="has-entry">1</property>
                                <child internal-child="entry">
                                  <object class="GtkEntry" id="comboboxtext-entry2">
                                    <property name="invisible-char">•</property>
                                    <property name="text" translatable="1">comboboxentry</property>
                                  </object>
                                </child>
                              </object>
                            </child>
                            <child>
                              <object class="GtkEntry" id="entry1">
                                <property name="enable-emoji-completion">1</property>
                                <property name="invisible_char">•</property>
                                <property name="placeholder-text" translatable="1">Click icon to change mode</property>
                                <property name="secondary-icon-name">view-refresh-symbolic</property>
                                <property name="secondary-icon-tooltip-text">Change mode</property>
                                <signal name="icon-release" handler="on_entry_icon_release" swapped="no"/>
                              </object>
                            </child>
                            <child>
                              <object class="GtkEntry" id="entry2">
                                <property name="sensitive">0</property>
                                <property name="text" translatable="1">entry</property>
                              </object>
                            </child>
                            <child>
                              <object class="GtkBox" id="box223">
                                <style>
                                  <class name="linked"/>
                                </style>
                                <child>
                                  <object class="GtkEntry" id="entry24">
                                    <property name="enable-emoji-completion">1</property>
                                    <property name="text" translatable="1">entry</property>
                                    <property name="hexpand">1</property>
                                  </object>
                                </child>
                                <child>
                                  <object class="GtkButton" id="button224">
                                    <property name="icon-name">window-close-symbolic</property>
                                  </object>
                                </child>
                              </object>
                            </child>
                            <child>
                              <object class="GtkPasswordEntry">
                                <property name="show-peek-icon">1</property>
                                <property name="placeholder-text" translatable="1">Password…</property>
                              </object>
                            </child>
                            <child>
                              <object class="GtkBox">
                                <property name="hexpand">0</property>
                                <style>
                                  <class name="linked"/>
                                </style>
                                <child>
                                  <object class="GtkComboBox">
                                    <property name="model">lrmodel</property>
                                    <property name="active">0</property>
                                    <property name="hexpand">1</property>
                                    <child>
                                      <object class="GtkCellRendererText"/>
                                      <attributes>
                                        <attribute name="text">0</attribute>
                                      </attributes>
                                    </child>
                                  </object>
                                </child>
                                <child>
                                  <object class="GtkComboBox">
                                    <property name="model">lrmodel</property>
                                    <property name="active">1</property>
                                    <property name="hexpand">1</property>
                                    <child>
                                      <object class="GtkCellRendererText"/>
                                      <attributes>
                                        <attribute name="text">0</attribute>
                                      </attributes>
                                    </child>
                                  </object>
                                </child>
                                <child>
                                  <object class="GtkComboBox">
                                    <property name="model">lrmodel</property>
                                    <property name="active">2</property>
                                    <property name="hexpand">1</property>
                                    <child>
                                      <object class="GtkCellRendererText"/>
                                      <attributes>
                                        <attribute name="text">0</attribute>
                                      </attributes>
                                    </child>
                                  </object>
                                </child>
                              </object>
                            </child>
                            <child>
                              <object class="GtkBox" id="box18">
                                <property name="spacing">20</property>
                                <child>
                                  <object class="GtkLabel" id="label3">
                                    <property name="label" translatable="1">label</property>
                                  </object>
                                </child>
                                <child>
                                  <object class="GtkLabel" id="label4">
                                    <property name="sensitive">0</property>
                                    <property name="label" translatable="1">label</property>
                                  </object>
                                </child>
                                <child>
                                  <object class="GtkSpinButton" id="spinbutton1">
                                    <property name="width-chars">2</property>
                                    <property name="max-width-chars">2</property>
                                    <property name="adjustment">adjustment2</property>
                                  </object>
                                </child>
                                <child>
                                  <object class="GtkSpinButton" id="spinbutton2">
                                    <property name="sensitive">0</property>
                                    <property name="width-chars">2</property>
                                    <property name="max-width-chars">2</property>
                                  </object>
                                </child>
                              </object>
                            </child>
                            <child>
                              <object class="GtkGrid" id="grid1">
                                <property name="row-homogeneous">1</property>
                                <property name="column-spacing">18</property>
                                <property name="row-spacing">6</property>
                                <child>
                                  <object class="GtkCheckButton" id="checkbutton1">
                                    <property name="label" translatable="1">checkbutton</property>
                                    <property name="active">1</property>
                                  </object>
                                </child>
                                <child>
                                  <object class="GtkCheckButton" id="checkbutton2">
                                    <property name="label" translatable="1">checkbutton</property>
                                    <layout>
                                      <property name="column">0</property>
                                      <property name="row">1</property>
                                    </layout>
                                  </object>
                                </child>
                                <child>
                                  <object class="GtkCheckButton" id="checkbutton3">
                                    <property name="label" translatable="1">checkbutton</property>
                                    <property name="inconsistent">1</property>
                                    <layout>
                                      <property name="column">0</property>
                                      <property name="row">2</property>
                                    </layout>
                                  </object>
                                </child>
                                <child>
                                  <object class="GtkCheckButton" id="checkbutton4">
                                    <property name="label" translatable="1">checkbutton</property>
                                    <property name="sensitive">0</property>
                                    <property name="active">1</property>
                                    <layout>
                                      <property name="column">0</property>
                                      <property name="row">3</property>
                                    </layout>
                                  </object>
                                </child>
                                <child>
                                  <object class="GtkCheckButton" id="checkbutton5">
                                    <property name="label" translatable="1">checkbutton</property>
                                    <property name="sensitive">0</property>
                                    <layout>
                                      <property name="column">0</property>
                                      <property name="row">4</property>
                                    </layout>
                                  </object>
                                </child>
                                <child>
                                  <object class="GtkCheckButton" id="checkbutton6">
                                    <property name="label" translatable="1">checkbutton</property>
                                    <property name="sensitive">0</property>
                                    <property name="inconsistent">1</property>
                                    <layout>
                                      <property name="column">0</property>
                                      <property name="row">5</property>
                                    </layout>
                                  </object>
                                </child>
                                <child>
                                  <object class="GtkCheckButton" id="radiobutton1">
                                    <property name="label" translatable="1">radiobutton</property>
                                    <property name="active">1</property>
                                    <layout>
                                      <property name="column">1</property>
                                      <property name="row">0</property>
                                    </layout>
                                  </object>
                                </child>
                                <child>
                                  <object class="GtkCheckButton">
                                    <property name="label" translatable="1">radiobutton</property>
                                    <property name="group">radiobutton1</property>
                                    <layout>
                                      <property name="column">1</property>
                                      <property name="row">1</property>
                                    </layout>
                                  </object>
                                </child>
                                <child>
                                  <object class="GtkCheckButton" id="radiobutton3">
                                    <property name="label" translatable="1">radiobutton</property>
                                    <property name="inconsistent">1</property>
                                    <property name="group">radiobutton1</property>
                                    <layout>
                                      <property name="column">1</property>
                                      <property name="row">2</property>
                                    </layout>
                                  </object>
                                </child>
                                <child>
                                  <object class="GtkCheckButton" id="radiobutton4">
                                    <property name="label" translatable="1">radiobutton</property>
                                    <property name="sensitive">0</property>
                                    <property name="active">1</property>
                                    <layout>
                                      <property name="column">1</property>
                                      <property name="row">3</property>
                                    </layout>
                                  </object>
                                </child>
                                <child>
                                  <object class="GtkCheckButton" id="radiobutton5">
                                    <property name="label" translatable="1">radiobutton</property>
                                    <property name="sensitive">0</property>
                                    <property name="group">radiobutton4</property>
                                    <layout>
                                      <property name="column">1</property>
                                      <property name="row">4</property>
                                    </layout>
                                  </object>
                                </child>
                                <child>
                                  <object class="GtkCheckButton" id="radiobutton6">
                                    <property name="label" translatable="1">radiobutton</property>
                                    <property name="sensitive">0</property>
                                    <property name="inconsistent">1</property>
                                    <property name="group">radiobutton4</property>
                                    <layout>
                                      <property name="column">1</property>
                                      <property name="row">5</property>
                                    </layout>
                                  </object>
                                </child>
                                <child>
                                  <object class="GtkSpinner" id="spinner1">
                                    <property name="spinning">1</property>
                                    <layout>
                                      <property name="column">2</property>
                                    </layout>
                                  </object>
                                </child>
                                <child>
                                  <object class="GtkSpinner" id="spinner2">
                                    <layout>
                                      <property name="column">2</property>
                                      <property name="row">1</property>
                                    </layout>
                                  </object>
                                </child>
                                <child>
                                  <object class="GtkSpinner" id="spinner3">
                                    <property name="spinning">1</property>
                                    <property name="sensitive">0</property>
                                    <layout>
                                      <property name="column">2</property>
                                      <property name="row">3</property>
                                    </layout>
                                  </object>
                                </child>
                                <child>
                                  <object class="GtkSpinner" id="spinner4">
                                    <property name="sensitive">0</property>
                                    <layout>
                                      <property name="column">2</property>
                                      <property name="row">4</property>
                                    </layout>
                                  </object>
                                </child>
                              </object>
                            </child>
                          </object>
                        </child>
                        <child>
                          <object class="GtkBox" id="box19">
                            <property name="orientation">1</property>
                            <property name="spacing">10</property>
                            <child>
                              <object class="GtkToggleButton" id="togglebutton1">
                                <property name="label" translatable="1">togglebutton</property>
                                <property name="receives-default">1</property>
                              </object>
                            </child>
                            <child>
                              <object class="GtkToggleButton" id="togglebutton2">
                                <property name="label" translatable="1">togglebutton</property>
                                <property name="sensitive">0</property>
                                <property name="receives-default">1</property>
                              </object>
                            </child>
                            <child>
                              <object class="GtkToggleButton" id="togglebutton3">
                                <property name="label" translatable="1">togglebutton</property>
                                <property name="receives-default">1</property>
                                <property name="active">1</property>
                              </object>
                            </child>
                            <child>
                              <object class="GtkToggleButton" id="togglebutton4">
                                <property name="label" translatable="1">togglebutton</property>
                                <property name="sensitive">0</property>
                                <property name="receives-default">1</property>
                                <property name="active">1</property>
                              </object>
                            </child>
                            <child>
                              <object class="GtkComboBox" id="combobox1">
                                <property name="model">liststore1</property>
                                <property name="active">0</property>
                                <child>
                                  <object class="GtkCellRendererText" id="cellrenderertext1"/>
                                  <attributes>
                                    <attribute name="text">2</attribute>
                                  </attributes>
                                </child>
                              </object>
                            </child>
                            <child>
                              <object class="GtkComboBox" id="combobox2">
                                <property name="sensitive">0</property>
                                <property name="model">liststore1</property>
                                <property name="active">1</property>
                                <child>
                                  <object class="GtkCellRendererText" id="cellrenderertext2"/>
                                  <attributes>
                                    <attribute name="text">2</attribute>
                                  </attributes>
                                </child>
                              </object>
                            </child>
                            <child>
                              <object class="GtkFontButton" id="fontbutton1">
                                <property name="receives-default">1</property>
                                <property name="level">family|style|size|features|variations</property>
                              </object>
                            </child>
                            <child>
                              <object class="GtkColorButton" id="colorbutton1">
                                <property name="receives-default">1</property>
                                <property name="rgba">#31316867a09f</property>
                              </object>
                            </child>
                            <child>
                              <object class="GtkLinkButton" id="linkbutton1">
                                <property name="label" translatable="1">link button</property>
                                <property name="receives-default">1</property>
                                <property name="has-tooltip">1</property>
                                <property name="has-frame">0</property>
                                <property name="uri">http://www.gtk.org</property>
                              </object>
                            </child>
                            <child>
                              <object class="GtkSwitch" id="switch1">
                                <property name="halign">3</property>
                              </object>
                            </child>
                            <child>
                              <object class="GtkSwitch" id="switch2">
                                <property name="sensitive">0</property>
                                <property name="halign">3</property>
                              </object>
                            </child>
                          </object>
                        </child>
                        <child>
                          <object class="GtkBox" id="box20">
                            <property name="orientation">1</property>
                            <property name="spacing">6</property>
                            <property name="hexpand">1</property>
                            <child>
                              <object class="GtkBox" id="box21">
                                <property name="orientation">1</property>
                                <property name="spacing">6</property>
                                <child>
                                  <object class="GtkProgressBar" id="progressbar1">
                                    <property name="fraction">0.5</property>
                                  </object>
                                </child>
                                <child>
                                  <object class="GtkProgressBar" id="progressbar2">
                                    <property name="fraction">0.5</property>
                                    <property name="inverted">1</property>
                                  </object>
                                </child>
                                <child>
                                  <object class="GtkProgressBar" id="progressbar3">
                                    <property name="fraction">0.5</property>
                                    <property name="show-text">1</property>
                                  </object>
                                </child>
                                <child>
                                  <object class="GtkLevelBar" id="levelbar1">
                                    <property name="value">0.6</property>
                                  </object>
                                </child>
                                <child>
                                  <object class="GtkLevelBar" id="levelbar2">
                                    <property name="max-value">5</property>
                                    <property name="value">2</property>
                                    <property name="mode">1</property>
                                    <offsets>
                                      <offset name="low" value="1"/>
                                      <offset name="high" value="4"/>
                                      <offset name="full" value="5"/>
                                    </offsets>
                                  </object>
                                </child>
                              </object>
                            </child>
                            <child>
                              <object class="GtkBox" id="box27">
                                <child>
                                  <object class="GtkBox" id="box24">
                                    <property name="hexpand">1</property>
                                    <property name="orientation">1</property>
                                    <property name="homogeneous">1</property>
                                    <child>
                                      <object class="GtkScale" id="scale1">
                                        <property name="adjustment">adjustment1</property>
                                        <property name="restrict-to-fill-level">0</property>
                                        <property name="fill-level">75</property>
                                      </object>
                                    </child>
                                    <child>
                                      <object class="GtkScale" id="scale2">
                                        <property name="sensitive">0</property>
                                        <property name="adjustment">adjustment1</property>
                                        <property name="restrict-to-fill-level">0</property>
                                        <property name="fill-level">75</property>
                                      </object>
                                    </child>
                                  </object>
                                </child>
                              </object>
                            </child>
                            <child>
                              <object class="GtkScale" id="scale5">
                                <property name="has-origin">0</property>
                                <property name="round-digits">0</property>
                                <property name="adjustment">adjustment3</property>
                                <property name="restrict-to-fill-level">0</property>
                                <marks>
                                  <mark value="0" position="bottom"></mark>
                                  <mark value="1" position="bottom"></mark>
                                  <mark value="2" position="bottom"></mark>
                                  <mark value="3" position="bottom"></mark>
                                  <mark value="4" position="bottom"></mark>
                                </marks>
                              </object>
                            </child>
                            <child>
                              <object class="GtkBox" id="box25">
                                <property name="homogeneous">1</property>
                                <child>
                                  <object class="GtkBox" id="box28">
                                    <property name="vexpand">1</property>
                                    <property name="spacing">6</property>
                                    <property name="homogeneous">1</property>
                                    <child>
                                      <object class="GtkProgressBar" id="progressbar5">
                                        <property name="orientation">1</property>
                                        <property name="fraction">0.5</property>
                                        <property name="halign">2</property>
                                      </object>
                                    </child>
                                    <child>
                                      <object class="GtkProgressBar" id="progressbar6">
                                        <property name="orientation">1</property>
                                        <property name="fraction">0.5</property>
                                        <property name="inverted">1</property>
                                        <property name="halign">1</property>
                                      </object>
                                    </child>
                                  </object>
                                </child>
                                <child>
                                  <object class="GtkBox" id="box23">
                                    <property name="vexpand">1</property>
                                    <property name="spacing">6</property>
                                    <property name="homogeneous">1</property>
                                    <child>
                                      <object class="GtkScale" id="scale3">
                                        <property name="height-request">100</property>
                                        <property name="orientation">1</property>
                                        <property name="adjustment">adjustment1</property>
                                        <property name="restrict-to-fill-level">0</property>
                                        <property name="fill-level">75</property>
                                        <property name="digits">-1</property>
                                        <property name="draw-value">1</property>
                                        <property name="halign">2</property>
                                      </object>
                                    </child>
                                    <child>
                                      <object class="GtkScale" id="scale4">
                                        <property name="height-request">100</property>
                                        <property name="sensitive">0</property>
                                        <property name="orientation">1</property>
                                        <property name="adjustment">adjustment1</property>
                                        <property name="restrict-to-fill-level">0</property>
                                        <property name="fill-level">75</property>
                                        <property name="digits">-1</property>
                                        <property name="draw-value">1</property>
                                        <property name="halign">1</property>
                                      </object>
                                    </child>
                                  </object>
                                </child>
                              </object>
                            </child>
                          </object>
                        </child>
                        <child>
                          <object class="GtkBox" id="box26">
                            <property name="orientation">1</property>
                            <property name="spacing">10</property>
                            <property name="hexpand">1</property>
                            <child>
                              <object class="GtkFrame">
                                <child>
                                  <object class="GtkVideo">
                                    <property name="autoplay">1</property>
                                    <property name="loop">1</property>
                                    <property name="file">resource:///org/gtk/WidgetFactory4/gtk-logo.webm</property>
                                  </object>
                                </child>
                              </object>
                            </child>
                            <child>
                              <object class="GtkFrame">
                                <child type="label">
                                  <object class="GtkLabel" id="label1">
                                    <property name="label" translatable="1">&lt;b&gt;Text Styles&lt;/b&gt;</property>
                                    <property name="use-markup">1</property>
                                  </object>
                                </child>
                                <child>
                                  <object class="GtkScrolledWindow">
                                    <property name="vexpand">1</property>
                                    <property name="hscrollbar-policy">2</property>
                                    <property name="propagate-natural-height">1</property>
                                    <property name="propagate-natural-width">1</property>
                                    <child>
                                      <object class="GtkBox">
                                        <property name="orientation">1</property>
                                        <property name="spacing">10</property>
                                        <child>
                                          <object class="GtkLabel">
                                            <property name="label">Large Title</property>
                                            <style>
                                              <class name="large-title"/>
                                            </style>
                                          </object>
                                        </child>
                                        <child>
                                          <object class="GtkLabel">
                                            <property name="label">Title 1</property>
                                            <style>
                                              <class name="title-1"/>
                                            </style>
                                          </object>
                                        </child>
                                        <child>
                                          <object class="GtkLabel">
                                            <property name="label">Title 2</property>
                                            <style>
                                              <class name="title-2"/>
                                            </style>
                                          </object>
                                        </child>
                                        <child>
                                          <object class="GtkLabel">
                                            <property name="label">Title 3</property>
                                            <style>
                                              <class name="title-3"/>
                                            </style>
                                          </object>
                                        </child>
                                        <child>
                                          <object class="GtkLabel">
                                            <property name="label">Title 4</property>
                                            <style>
                                              <class name="title-4"/>
                                            </style>
                                          </object>
                                        </child>
                                        <child>
                                          <object class="GtkLabel">
                                            <property name="label">Heading</property>
                                            <style>
                                              <class name="heading"/>
                                            </style>
                                          </object>
                                        </child>
                                        <child>
                                          <object class="GtkLabel">
                                            <property name="label">Body</property>
                                            <style>
                                              <class name="body"/>
                                            </style>
                                          </object>
                                        </child>
                                        <child>
                                          <object class="GtkLabel">
                                            <property name="label">Caption Heading</property>
                                            <style>
                                              <class name="caption-heading"/>
                                            </style>
                                          </object>
                                        </child>
                                        <child>
                                          <object class="GtkLabel">
                                            <property name="label">Caption</property>
                                            <style>
                                              <class name="caption"/>
                                            </style>
                                          </object>
                                        </child>
                                      </object>
                                    </child>
                                  </object>
                                </child>
                              </object>
                            </child>
                          </object>
                        </child>
                        <child>
                          <object class="GtkBox" id="box4">
                            <property name="orientation">1</property>
                            <property name="spacing">6</property>
                            <property name="hexpand">1</property>
                            <child>
                              <object class="GtkScrolledWindow" id="scrolledwindow1">
                                <property name="width-request">150</property>
                                <property name="vscrollbar-policy">0</property>
                                <property name="has-frame">1</property>
                                <property name="vexpand">1</property>
                                <child>
                                  <object class="GtkTreeView" id="treeview1">
                                    <property name="model">liststore1</property>
                                    <property name="headers-clickable">0</property>
                                    <property name="search-column">0</property>
                                    <child internal-child="selection">
                                      <object class="GtkTreeSelection" id="treeview-selection"/>
                                    </child>
                                    <child>
                                      <object class="GtkTreeViewColumn" id="treeviewcolumn3">
                                        <property name="title" translatable="1">Cool</property>
                                        <child>
                                          <object class="GtkCellRendererToggle" id="cellrenderertoggle1"/>
                                          <attributes>
                                            <attribute name="active">0</attribute>
                                            <attribute name="radio">4</attribute>
                                          </attributes>
                                        </child>
                                      </object>
                                    </child>
                                    <child>
                                      <object class="GtkTreeViewColumn" id="treeviewcolumn4">
                                        <property name="title" translatable="1">Icon</property>
                                        <property name="reorderable">1</property>
                                        <child>
                                          <object class="GtkCellRendererPixbuf" id="cellrendererpixbuf1"/>
                                          <attributes>
                                            <attribute name="icon_name">1</attribute>
                                          </attributes>
                                        </child>
                                      </object>
                                    </child>
                                    <child>
                                      <object class="GtkTreeViewColumn" id="treeviewcolumn1">
                                        <property name="title" translatable="1">Name</property>
                                        <property name="resizable">1</property>
                                        <property name="reorderable">1</property>
                                        <property name="sort-indicator">1</property>
                                        <property name="sort-column-id">2</property>
                                        <child>
                                          <object class="GtkCellRendererText" id="cellrenderertext3">
                                            <property name="ellipsize">3</property>
                                          </object>
                                          <attributes>
                                            <attribute name="text">2</attribute>
                                          </attributes>
                                        </child>
                                      </object>
                                    </child>
                                    <child>
                                      <object class="GtkTreeViewColumn" id="treeviewcolumn2">
                                        <property name="title" translatable="1">Nick</property>
                                        <property name="resizable">1</property>
                                        <property name="reorderable">1</property>
                                        <property name="sort-indicator">1</property>
                                        <property name="sort-column-id">3</property>
                                        <child>
                                          <object class="GtkCellRendererText" id="cellrenderertext4">
                                            <property name="ellipsize">3</property>
                                          </object>
                                          <attributes>
                                            <attribute name="text">3</attribute>
                                          </attributes>
                                        </child>
                                      </object>
                                    </child>
                                  </object>
                                </child>
                              </object>
                            </child>
                            <child>
                              <object class="GtkScrolledWindow" id="scrolledwindow2">
                                <property name="has-frame">1</property>
                                <property name="vexpand">1</property>
                                <child>
                                  <object class="GtkTextView" id="textview1">
                                    <property name="buffer">textbuffer1</property>
                                    <property name="wrap-mode">2</property>
                                    <property name="left-margin">10</property>
                                    <property name="right-margin">10</property>
                                  </object>
                                </child>
                              </object>
                            </child>
                          </object>
                        </child>
                      </object>
                    </child>
                    <child>
                      <object class="GtkBox" id="box5">
                        <property name="spacing">10</property>
                        <property name="homogeneous">1</property>
                        <child>
                          <object class="GtkNotebook" id="notebook1">
                            <child>
                              <object class="GtkNotebookPage">
                                <property name="child">
                                  <object class="GtkPicture" id="notebook_sunset">
                                    <property name="content-fit">cover</property>
                                    <child>
                                      <object class="GtkDragSource">
                                        <signal name="prepare" handler="on_picture_drag_prepare" swapped="no"/>
                                      </object>
                                    </child>
                                    <child>
                                      <object class="GtkDropTarget">
                                        <property name="actions">copy</property>
                                        <property name="formats">GdkTexture</property>
                                        <signal name="drop" handler="on_picture_drop" swapped="no"/>
                                      </object>
                                    </child>
                                  </object>
                                </property>
                                <property name="tab">
                                  <object class="GtkLabel" id="label5">
                                    <property name="label" translatable="1">Sunset</property>
                                  </object>
                                </property>
                              </object>
                            </child>
                            <child>
                              <object class="GtkNotebookPage">
                                <property name="child">
                                  <object class="GtkPicture" id="notebook_nyc">
                                    <child>
                                      <object class="GtkDragSource">
                                        <signal name="prepare" handler="on_picture_drag_prepare" swapped="no"/>
                                      </object>
                                    </child>
                                    <child>
                                      <object class="GtkDropTarget">
                                        <property name="actions">copy</property>
                                        <property name="formats">GdkTexture</property>
                                        <signal name="drop" handler="on_picture_drop" swapped="no"/>
                                      </object>
                                    </child>
                                  </object>
                                </property>
                                <property name="tab">
                                  <object class="GtkLabel" id="label6">
                                    <property name="label" translatable="1">NYC</property>
                                  </object>
                                </property>
                              </object>
                            </child>
                            <child>
                              <object class="GtkNotebookPage">
                                <property name="child">
                                  <object class="GtkPicture" id="notebook_beach">
                                    <child>
                                      <object class="GtkDragSource">
                                        <signal name="prepare" handler="on_picture_drag_prepare" swapped="no"/>
                                      </object>
                                    </child>
                                    <child>
                                      <object class="GtkDropTarget">
                                        <property name="actions">copy</property>
                                        <property name="formats">GdkTexture</property>
                                        <signal name="drop" handler="on_picture_drop" swapped="no"/>
                                      </object>
                                    </child>
                                  </object>
                                </property>
                                <property name="tab">
                                  <object class="GtkLabel" id="label7">
                                    <property name="label" translatable="1">Beach</property>
                                  </object>
                                </property>
                              </object>
                            </child>
                          </object>
                        </child>
                        <child>
                          <object class="GtkNotebook" id="notebook2">
                            <property name="tab-pos">1</property>
                            <child>
                              <object class="GtkNotebookPage">
                                <property name="child">
                                  <object class="GtkBox" id="box8">
                                    <property name="orientation">1</property>
                                  </object>
                                </property>
                                <property name="tab">
                                  <object class="GtkLabel" id="label8">
                                    <property name="label" translatable="1">page 1</property>
                                  </object>
                                </property>
                              </object>
                            </child>
                            <child>
                              <object class="GtkNotebookPage">
                                <property name="position">1</property>
                                <property name="child">
                                  <object class="GtkBox" id="box10">
                                    <property name="orientation">1</property>
                                  </object>
                                </property>
                                <property name="tab">
                                  <object class="GtkLabel" id="label9">
                                    <property name="label" translatable="1">page 2</property>
                                  </object>
                                </property>
                              </object>
                            </child>
                            <child>
                              <object class="GtkNotebookPage">
                                <property name="position">2</property>
                                <property name="child">
                                  <object class="GtkBox" id="box11">
                                    <property name="orientation">1</property>
                                  </object>
                                </property>
                                <property name="tab">
                                  <object class="GtkLabel" id="label10">
                                    <property name="label" translatable="1">page 3</property>
                                  </object>
                                </property>
                              </object>
                            </child>
                          </object>
                        </child>
                        <child>
                          <object class="GtkNotebook" id="notebook3">
                            <property name="tab-pos">3</property>
                            <child>
                              <object class="GtkNotebookPage">
                                <property name="child">
                                  <object class="GtkBox" id="box12">
                                    <property name="orientation">1</property>
                                  </object>
                                </property>
                                <property name="tab">
                                  <object class="GtkLabel" id="label11">
                                    <property name="label" translatable="1">page 1</property>
                                  </object>
                                </property>
                              </object>
                            </child>
                            <child>
                              <object class="GtkNotebookPage">
                                <property name="position">1</property>
                                <property name="child">
                                  <object class="GtkBox" id="box13">
                                    <property name="orientation">1</property>
                                  </object>
                                </property>
                                <property name="tab">
                                  <object class="GtkLabel" id="label12">
                                    <property name="label" translatable="1">page 2</property>
                                  </object>
                                </property>
                              </object>
                            </child>
                            <child>
                              <object class="GtkNotebookPage">
                                <property name="position">2</property>
                                <property name="child">
                                  <object class="GtkBox" id="box14">
                                    <property name="orientation">1</property>
                                  </object>
                                </property>
                                <property name="tab">
                                  <object class="GtkLabel" id="label13">
                                    <property name="label" translatable="1">page 3</property>
                                  </object>
                                </property>
                              </object>
                            </child>
                          </object>
                        </child>
                        <child>
                          <object class="GtkNotebook" id="notebook4">
                            <property name="tab-pos">0</property>
                            <child>
                              <object class="GtkNotebookPage">
                                <property name="child">
                                  <object class="GtkBox" id="box15">
                                    <property name="orientation">1</property>
                                  </object>
                                </property>
                                <property name="tab">
                                  <object class="GtkLabel" id="label14">
                                    <property name="label" translatable="1">page 1</property>
                                  </object>
                                </property>
                              </object>
                            </child>
                            <child>
                              <object class="GtkNotebookPage">
                                <property name="position">1</property>
                                <property name="child">
                                  <object class="GtkBox" id="box16">
                                    <property name="orientation">1</property>
                                  </object>
                                </property>
                                <property name="tab">
                                  <object class="GtkLabel" id="label15">
                                    <property name="label" translatable="1">page 2</property>
                                  </object>
                                </property>
                              </object>
                            </child>
                            <child>
                              <object class="GtkNotebookPage">
                                <property name="position">2</property>
                                <property name="child">
                                  <object class="GtkBox" id="box17">
                                    <property name="orientation">1</property>
                                  </object>
                                </property>
                                <property name="tab">
                                  <object class="GtkLabel" id="label16">
                                    <property name="label" translatable="1">page 3</property>
                                  </object>
                                </property>
                              </object>
                            </child>
                          </object>
                        </child>
                      </object>
                    </child>
                  </object>
                </property>
              </object>
            </child>
            <child>
              <object class="GtkStackPage">
                <property name="name">page2</property>
                <property name="title" translatable="1">Page _2</property>
                <property name="use-underline">1</property>
                <property name="child">
                  <object class="GtkOverlay" id="page2">
                    <child type="overlay">
                      <object class="GtkRevealer" id="page2revealer">
                        <property name="transition-type">9</property>
                        <property name="halign">3</property>
                        <property name="valign">1</property>
                        <child>
                          <object class="GtkFrame" id="page2frame">
                            <style>
                              <class name="app-notification"/>
                            </style>
                            <child>
                              <object class="GtkBox" id="page2box">
                                <property name="spacing">20</property>
                                <property name="margin-start">10</property>
                                <property name="margin-end">10</property>
                                <property name="margin-top">10</property>
                                <property name="margin-bottom">10</property>
                                <child>
                                  <object class="GtkLabel" id="page2note">
                                    <property name="hexpand">1</property>
                                    <property name="halign">1</property>
                                    <property name="label">NEWS!</property>
                                  </object>
                                </child>
                                <child>
                                  <object class="GtkButton" id="page2reset">
                                    <property name="valign">3</property>
                                    <property name="label" translatable="1">Reset</property>
                                  </object>
                                </child>
                                <child>
                                  <object class="GtkButton" id="page2dismiss">
                                    <property name="focus-on-click">0</property>
                                    <property name="has-frame">0</property>
                                    <property name="icon-name">window-close-symbolic</property>
                                  </object>
                                </child>
                              </object>
                            </child>
                          </object>
                        </child>
                      </object>
                    </child>
                    <child>
                      <object class="GtkBox">
                        <property name="spacing">10</property>
                        <child>
                          <object class="GtkBox">
                            <property name="orientation">1</property>
                            <property name="spacing">10</property>
                            <child>
                              <object class="GtkBox">
                                <property name="spacing">6</property>
                                <child>
                                  <object class="GtkSpinButton" id="verticalspin1">
                                    <property name="orientation">1</property>
                                    <property name="adjustment">adjustment2</property>
                                  </object>
                                </child>
                                <child>
                                  <object class="GtkSpinButton" id="verticalspin2">
                                    <property name="sensitive">0</property>
                                    <property name="orientation">1</property>
                                    <property name="adjustment">adjustment2</property>
                                  </object>
                                </child>
                                <child>
                                  <object class="GtkGrid">
                                    <property name="row-spacing">6</property>
                                    <property name="column-spacing">6</property>
                                    <property name="halign">3</property>
                                    <property name="valign">3</property>
                                    <child>
                                      <object class="GtkVolumeButton">
                                        <accessibility>
                                          <property name="label" translatable="1">Volume</property>
                                        </accessibility>
                                        <property name="orientation">1</property>
                                        <property name="valign">3</property>
                                        <property name="value">.5</property>
                                        <property name="halign">3</property>
                                        <layout>
                                          <property name="column">0</property>
                                          <property name="row">0</property>
                                        </layout>
                                      </object>
                                    </child>
                                    <child>
                                      <object class="GtkScaleButton" id="mic-button">
                                        <accessibility>
                                          <property name="label" translatable="1">Microphone gain</property>
                                        </accessibility>
                                        <property name="has-tooltip">1</property>
                                        <property name="icons">microphone-sensitivity-muted-symbolic
microphone-sensitivity-high-symbolic
microphone-sensitivity-low-symbolic
microphone-sensitivity-medium-symbolic</property>
                                        <property name="valign">3</property>
                                        <property name="value">.5</property>
                                        <property name="halign">3</property>
                                        <signal name="value-changed" handler="on_scale_button_value_changed" swapped="no"/>
                                        <layout>
                                          <property name="column">0</property>
                                          <property name="row">1</property>
                                        </layout>
                                      </object>
                                    </child>
                                  </object>
                                </child>
                              </object>
                            </child>
                            <child>
                              <object class="GtkFrame" id="page2frame1">
                                <child>
                                  <object class="GtkBox">
                                    <property name="orientation">1</property>
                                    <child>
                                      <object class="GtkStack" id="stack">
                                        <property name="transition-type">22</property>
                                        <property name="transition-duration">250</property>
                                        <child>
                                          <object class="GtkStackPage">
                                            <property name="name">page1</property>
                                            <property name="icon-name">preferences-desktop-locale-symbolic</property>
                                            <property name="title">News</property>
                                            <property name="child">
                                              <object class="GtkScrolledWindow" id="swo">
                                                <property name="hscrollbar-policy">2</property>
                                                <child>
                                                  <object class="GtkTextView" id="tvo">
                                                    <property name="buffer">textbuffer2</property>
                                                    <property name="left-margin">10</property>
                                                    <property name="right-margin">10</property>
                                                  </object>
                                                </child>
                                              </object>
                                            </property>
                                          </object>
                                        </child>
                                        <child>
                                          <object class="GtkStackPage">
                                            <property name="name">page2</property>
                                            <property name="icon-name">folder-pictures-symbolic</property>
                                            <property name="title">Logo</property>
                                            <property name="child">
                                              <object class="GtkImage" id="imageo">
                                                <property name="icon-name">org.gtk.WidgetFactory4</property>
                                                <property name="pixel-size">256</property>
                                                <style>
                                                  <class name="icon-dropshadow"/>
                                                </style>
                                              </object>
                                            </property>
                                          </object>
                                        </child>
                                      </object>
                                    </child>
                                    <child>
                                      <object class="GtkActionBar" id="actionbar1">
                                        <child type="center">
                                          <object class="GtkStackSwitcher" id="switcher">
                                            <property name="stack">stack</property>
                                            <property name="halign">3</property>
                                          </object>
                                        </child>
                                        <child type="end">
                                          <object class="GtkMenuButton">
                                            <property name="menu-model">dinner_menu</property>
                                            <property name="halign">3</property>
                                            <property name="valign">3</property>
                                            <property name="icon-name">emblem-system-symbolic</property>
                                          </object>
                                        </child>
                                      </object>
                                    </child>
                                  </object>
                                </child>
                              </object>
                            </child>
                            <child>
                              <object class="GtkScrolledWindow">
                                <property name="has-frame">1</property>
                                <property name="hscrollbar-policy">2</property>
                                <property name="min-content-height">200</property>
                                <property name="hexpand">0</property>
                                <property name="vexpand">1</property>
                                <child>
                                  <object class="GtkListBox" id="listbox">
                                    <property name="selection-mode">0</property>
                                    <property name="show-separators">1</property>
                                    <style>
                                      <class name="rich-list"/>
                                    </style>
                                    <child type="placeholder">
                                      <object class="GtkLabel">
                                        <property name="label">No rows found</property>
                                      </object>
                                    </child>
                                    <child>
                                      <object class="GtkListBoxRow" id="listboxrow1">
                                        <property name="activatable">0</property>
                                        <property name="selectable">0</property>
                                        <child>
                                          <object class="GtkBox">
                                            <child>
                                              <object class="GtkLabel">
                                                <property name="label" translatable="1">Row 1</property>
                                                <property name="halign">1</property>
                                                <property name="valign">3</property>
                                                <property name="hexpand">1</property>
                                              </object>
                                            </child>
                                            <child>
                                              <object class="GtkSwitch" id="listboxrow1switch">
                                                <property name="halign">2</property>
                                                <property name="valign">3</property>
                                              </object>
                                            </child>
                                          </object>
                                        </child>
                                      </object>
                                    </child>
                                    <child>
                                      <object class="GtkListBoxRow" id="listboxrow2">
                                        <property name="activatable">0</property>
                                        <child>
                                          <object class="GtkBox">
                                            <child>
                                              <object class="GtkLabel">
                                                <property name="label" translatable="1">Row 2</property>
                                                <property name="halign">1</property>
                                                <property name="valign">3</property>
                                                <property name="hexpand">1</property>
                                              </object>
                                            </child>
                                            <child>
                                              <object class="GtkScale" id="opacity">
                                                <property name="halign">2</property>
                                                <property name="valign">3</property>
                                                <property name="width-request">150</property>
                                                <property name="adjustment">adjustment1</property>
                                              </object>
                                            </child>
                                          </object>
                                        </child>
                                      </object>
                                    </child>
                                    <child>
                                      <object class="GtkListBoxRow" id="listboxrow3">
                                        <child>
                                          <object class="GtkBox">
                                            <child>
                                              <object class="GtkLabel">
                                                <property name="label" translatable="1">Row 3</property>
                                                <property name="halign">1</property>
                                                <property name="valign">3</property>
                                                <property name="hexpand">1</property>
                                              </object>
                                            </child>
                                            <child>
                                              <object class="GtkImage" id="listboxrow3image">
                                                <property name="icon-name">object-select-symbolic</property>
                                                <property name="halign">2</property>
                                                <property name="valign">3</property>
                                                <property name="opacity">0</property>
                                              </object>
                                            </child>
                                          </object>
                                        </child>
                                      </object>
                                    </child>
                                    <child>
                                      <object class="GtkListBoxRow" id="listboxrow4">
                                        <property name="activatable">0</property>
                                        <child>
                                          <object class="GtkBox">
                                            <child>
                                              <object class="GtkLabel">
                                                <property name="label" translatable="1">Row 4</property>
                                                <property name="halign">1</property>
                                                <property name="valign">3</property>
                                                <property name="hexpand">1</property>
                                              </object>
                                            </child>
                                            <child>
                                              <object class="GtkSpinButton">
                                                <property name="adjustment">adjustment1</property>
                                                <property name="hexpand">1</property>
                                                <property name="halign">2</property>
                                                <property name="valign">3</property>
                                              </object>
                                            </child>
                                          </object>
                                        </child>
                                      </object>
                                    </child>
                                    <child>
                                      <object class="GtkListBoxRow" id="listboxrow5">
                                        <property name="activatable">0</property>
                                        <child>
                                          <object class="GtkBox">
                                            <child>
                                              <object class="GtkLabel">
                                                <property name="label" translatable="1">Row 5</property>
                                                <property name="halign">1</property>
                                                <property name="valign">3</property>
                                                <property name="hexpand">1</property>
                                              </object>
                                            </child>
                                            <child>
                                              <object class="GtkButton" id="listboxrow5button">
                                                <property name="halign">2</property>
                                                <property name="valign">3</property>
                                                <property name="icon-name">appointment-soon-symbolic</property>
                                              </object>
                                            </child>
                                          </object>
                                        </child>
                                      </object>
                                    </child>
                                    <child>
                                      <object class="GtkListBoxRow" id="listboxrow6">
                                        <property name="activatable">0</property>
                                        <child>
                                          <object class="GtkBox">
                                            <child>
                                              <object class="GtkLabel">
                                                <property name="label" translatable="1">Row 6</property>
                                                <property name="halign">1</property>
                                                <property name="valign">3</property>
                                                <property name="hexpand">1</property>
                                              </object>
                                            </child>
                                            <child>
                                              <object class="GtkCheckButton">
                                                <property name="halign">2</property>
                                                <property name="valign">3</property>
                                              </object>
                                            </child>
                                          </object>
                                        </child>
                                      </object>
                                    </child>
                                    <child>
                                      <object class="GtkListBoxRow" id="listboxrow7">
                                        <child>
                                          <object class="GtkBox">
                                            <child>
                                              <object class="GtkLabel">
                                                <property name="label" translatable="1">Row 7</property>
                                                <property name="halign">1</property>
                                                <property name="valign">3</property>
                                                <property name="hexpand">1</property>
                                              </object>
                                            </child>
                                          </object>
                                        </child>
                                      </object>
                                    </child>
                                    <child>
                                      <object class="GtkListBoxRow" id="listboxrow8">
                                        <child>
                                          <object class="GtkBox">
                                            <child>
                                              <object class="GtkLabel">
                                                <property name="label" translatable="1">Row 8</property>
                                                <property name="halign">1</property>
                                                <property name="valign">3</property>
                                                <property name="hexpand">1</property>
                                              </object>
                                            </child>
                                          </object>
                                        </child>
                                      </object>
                                    </child>
                                  </object>
                                </child>
                              </object>
                            </child>
                          </object>
                        </child>
                        <child>
                          <object class="GtkBox">
                            <property name="orientation">1</property>
                            <property name="spacing">10</property>
                            <child>
                              <object class="GtkFrame" id="page2frame2">
                                <child>
                                  <object class="GtkBox">
                                    <property name="orientation">1</property>
                                    <child>
                                      <object class="GtkPopoverMenuBar">
                                        <property name="menu-model">menu_bar_model</property>
                                      </object>
                                    </child>
                                    <child>
                                      <object class="GtkBox" id="toolbar">
                                        <style>
                                          <class name="toolbar"/>
                                        </style>
                                        <child>
                                          <object class="GtkButton">
                                            <property name="label" translatable="1">New</property>
                                            <property name="icon-name">document-new</property>
                                            <property name="tooltip-text" translatable="1">Create a new document</property>
                                          </object>
                                        </child>
                                        <child>
                                          <object class="GtkButton">
                                            <property name="label" translatable="1">Save</property>
                                            <property name="icon-name">document-save</property>
                                            <property name="tooltip-text" translatable="1">Save the current document</property>
                                          </object>
                                        </child>
                                        <child>
                                          <object class="GtkSeparator"/>
                                        </child>
                                        <child>
                                          <object class="GtkButton">
                                            <property name="label" translatable="1">Search</property>
                                            <property name="icon-name">edit-find</property>
                                            <property name="action-name">win.search</property>
                                            <property name="tooltip-text" translatable="1">Search for it</property>
                                          </object>
                                        </child>
                                        <child>
                                          <object class="GtkButton">
                                            <property name="sensitive">0</property>
                                            <property name="label" translatable="1">Insert</property>
                                            <property name="icon-name">insert-image</property>
                                            <property name="tooltip-text" translatable="1">Insert something</property>
                                          </object>
                                        </child>
                                        <child>
                                          <object class="GtkColorButton">
                                            <property name="rgba">#9141AC</property>
                                            <property name="tooltip-text" translatable="1">Select a color</property>
                                          </object>
                                        </child>
                                      </object>
                                    </child>
                                    <child>
                                      <object class="GtkSearchBar" id="searchbar">
                                        <child>
                                          <object class="GtkSearchEntry"/>
                                        </child>
                                      </object>
                                    </child>
                                    <child>
                                      <object class="GtkInfoBar" id="infobar">
                                        <property name="visible">0</property>
                                        <property name="show-close-button">1</property>
                                        <child>
                                          <object class="GtkBox">
                                            <child>
                                              <object class="GtkLabel">
                                                <property name="label">You wanted to delete something.</property>
                                              </object>
                                            </child>
                                          </object>
                                        </child>
                                      </object>
                                    </child>
                                    <child>
                                      <object class="GtkScrolledWindow">
                                        <property name="vexpand">1</property>
                                        <child>
                                          <object class="MyTextView" id="text3">
                                            <property name="visible">True</property>
                                            <property name="buffer">textbuffer1</property>
                                            <property name="wrap-mode">2</property>
                                            <property name="left-margin">10</property>
                                            <property name="right-margin">10</property>
                                          </object>
                                        </child>
                                      </object>
                                    </child>
                                    <child>
                                      <object class="GtkSeparator"/>
                                    </child>
                                    <child>
                                      <object class="GtkStatusbar" id="statusbar"/>
                                    </child>
                                  </object>
                                </child>
                              </object>
                            </child>
                            <child>
                              <object class="GtkBox">
                                <child>
                                  <object class="GtkBox">
                                    <property name="spacing">10</property>
                                    <property name="hexpand">1</property>
                                    <property name="vexpand">1</property>
                                    <child>
                                      <object class="GtkFrame" id="panedframe1">
                                        <property name="hexpand">1</property>
                                        <property name="vexpand">1</property>
                                        <child>
                                          <object class="GtkPaned">
                                            <style>
                                              <class name="view"/>
                                            </style>
                                            <child>
                                              <object class="GtkLabel">
                                                <property name="label">Left</property>
                                              </object>
                                            </child>
                                            <child>
                                              <object class="GtkLabel">
                                                <property name="label">Right</property>
                                              </object>
                                            </child>
                                          </object>
                                        </child>
                                      </object>
                                    </child>
                                    <child>
                                      <object class="GtkFrame" id="panedframe2">
                                        <property name="hexpand">1</property>
                                        <property name="vexpand">1</property>
                                        <child>
                                          <object class="GtkPaned">
                                            <property name="orientation">1</property>
                                            <style>
                                              <class name="view"/>
                                            </style>
                                            <child>
                                              <object class="GtkLabel">
                                                <property name="label">Top</property>
                                              </object>
                                            </child>
                                            <child>
                                              <object class="GtkLabel">
                                                <property name="label">Bottom</property>
                                              </object>
                                            </child>
                                          </object>
                                        </child>
                                      </object>
                                    </child>
                                  </object>
                                </child>
                              </object>
                            </child>
                          </object>
                        </child>
                        <child>
                          <object class="GtkBox" id="filler2">
                            <property name="orientation">1</property>
                            <property name="spacing">10</property>
                            <child>
                              <object class="GtkCalendar">
                                <property name="halign">3</property>
                              </object>
                            </child>
                            <child>
                              <object class="GtkExpander" id="expander1">
                                <property name="expanded">1</property>
                                <child>
                                  <object class="GtkBox">
                                    <property name="orientation">1</property>
                                    <child>
                                      <object class="GtkScrolledWindow" id="scrolledwindow3">
                                        <property name="has-frame">1</property>
                                        <property name="margin-top">6</property>
                                        <property name="height-request">226</property>
                                        <child>
                                          <object class="GtkIconView" id="iconview1">
                                            <property name="selection-mode">3</property>
                                            <property name="model">iconsmodel</property>
                                            <child>
                                              <object class="GtkCellRendererPixbuf" id="iconviewcell"/>
                                              <attributes>
                                                <attribute name="icon-name">0</attribute>
                                              </attributes>
                                            </child>
                                          </object>
                                        </child>
                                      </object>
                                    </child>
                                    <child>
                                      <object class="GtkBox">
                                        <style>
                                          <class name="linked"/>
                                        </style>
                                        <child>
                                          <object class="GtkButton" id="decrease_button">
                                            <property name="icon-name">zoom-out-symbolic</property>
                                            <property name="tooltip-text">Normal icons</property>
                                            <signal name="clicked" handler="decrease_icon_size" object="iconview1" swapped="yes"/>
                                          </object>
                                        </child>
                                        <child>
                                          <object class="GtkButton" id="increase_button">
                                            <property name="icon-name">zoom-in-symbolic</property>
                                            <property name="tooltip-text">Large icons</property>
                                            <signal name="clicked" handler="increase_icon_size" object="iconview1" swapped="yes"/>
                                          </object>
                                        </child>
                                        <child>
                                          <object class="GtkButton" id="reset_button">
                                            <property name="icon-name">zoom-original-symbolic</property>
                                            <property name="tooltip-text">Inherited icon size</property>
                                            <signal name="clicked" handler="reset_icon_size" object="iconview1" swapped="yes"/>
                                          </object>
                                        </child>
                                      </object>
                                    </child>
                                  </object>
                                </child>
                                <child type="label">
                                  <object class="GtkLabel" id="label19">
                                    <property name="label" translatable="1">Expander</property>
                                  </object>
                                </child>
                              </object>
                            </child>
                            <child>
                              <object class="GtkButton" id="info_dialog_button">
                                <property name="label" translatable="1">_Inform</property>
                                <property name="use-underline">1</property>
                              </object>
                            </child>
                            <child>
                              <object class="GtkButton" id="action_dialog_button">
                                <property name="label" translatable="1">_Act</property>
                                <property name="use-underline">1</property>
                              </object>
                            </child>
                            <child>
                              <object class="GtkButton" id="preference_dialog_button">
                                <property name="label" translatable="1">_Configure</property>
                                <property name="use-underline">1</property>
                              </object>
                            </child>
                            <child>
                              <object class="GtkButton" id="selection_dialog_button">
                                <property name="label" translatable="1">S_elect</property>
                                <property name="use-underline">1</property>
                              </object>
                            </child>
                          </object>
                        </child>
                      </object>
                    </child>
                  </object>
                </property>
              </object>
            </child>
            <child>
              <object class="GtkStackPage">
                <property name="name">page3</property>
                <property name="title" translatable="1">Page _3</property>
                <property name="use-underline">1</property>
                <property name="child">
                  <object class="GtkBox">
                    <property name="spacing">10</property>
                    <child>
                      <object class="GtkBox">
                        <property name="orientation">1</property>
                        <property name="spacing">10</property>
                        <child>
                          <object class="GtkBox">
                            <property name="orientation">1</property>
                            <property name="spacing">4</property>
                            <child>
                              <object class="GtkScrolledWindow">
                                <property name="hscrollbar-policy">2</property>
                                <property name="vscrollbar-policy">0</property>
                                <property name="height-request">300</property>
                                <property name="has-frame">1</property>
                                <child>
                                  <object class="GtkTreeView" id="charletree">
                                    <property name="enable-grid-lines">2</property>
                                    <property name="enable-tree-lines">1</property>
                                    <property name="rubber-banding">1</property>
                                    <property name="model">charlemodel</property>
                                    <child internal-child="selection">
                                      <object class="GtkTreeSelection">
                                        <property name="mode">3</property>
                                      </object>
                                    </child>
                                    <child>
                                      <object class="GtkTreeViewColumn">
                                        <property name="title" translatable="1">Name</property>
                                        <child>
                                          <object class="GtkCellRendererText"/>
                                          <attributes>
                                            <attribute name="text">0</attribute>
                                          </attributes>
                                        </child>
                                      </object>
                                    </child>
                                    <child>
                                      <object class="GtkTreeViewColumn">
                                        <property name="title" translatable="1">Birth</property>
                                        <child>
                                          <object class="GtkCellRendererText"/>
                                          <attributes>
                                            <attribute name="text">1</attribute>
                                          </attributes>
                                        </child>
                                      </object>
                                    </child>
                                    <child>
                                      <object class="GtkTreeViewColumn">
                                        <property name="title" translatable="1">Death</property>
                                        <child>
                                          <object class="GtkCellRendererText"/>
                                          <attributes>
                                            <attribute name="text">2</attribute>
                                          </attributes>
                                        </child>
                                      </object>
                                    </child>
                                  </object>
                                </child>
                              </object>
                            </child>
                            <child>
                              <object class="GtkLabel">
                                <property name="selectable">1</property>
                                <property name="halign">1</property>
                                <property name="use-markup">1</property>
                                <property name="label" translatable="1">&lt;small&gt;Data source: &lt;a href=&quot;http://en.wikipedia.org/wiki/Charlemagne#Ancestry&quot;&gt;Wikipedia&lt;/a&gt;&lt;/small&gt;</property>
                              </object>
                            </child>
                          </object>
                        </child>
                        <child>
                          <object class="GtkScrolledWindow">
                            <property name="hscrollbar-policy">2</property>
                            <property name="vexpand">1</property>
                            <property name="has-frame">1</property>
                            <child>
                              <object class="GtkListBox" id="munsell">
                                <property name="selection-mode">3</property>
                                <property name="activate-on-single-click">0</property>
                              </object>
                            </child>
                          </object>
                        </child>
                      </object>
                    </child>
                    <child>
                      <object class="GtkBox">
                        <property name="orientation">1</property>
                        <property name="spacing">10</property>
                        <child>
                          <object class="GtkBox">
                            <property name="spacing">6</property>
                            <property name="valign">center</property>
                            <child>
                              <object class="GtkBox" id="lockbox">
                                <property name="hexpand">1</property>
                                <property name="spacing">6</property>
                                <property name="valign">center</property>
                                <child>
                                  <object class="GtkMenuButton" id="open_menubutton">
                                    <property name="halign">3</property>
                                    <property name="popover">open_popover</property>
                                    <property name="label">Open</property>
                                    <property name="valign">center</property>
                                  </object>
                                </child>
                                <child>
                                  <object class="GtkToggleButton" id="record_button">
                                    <property name="halign">3</property>
                                    <property name="valign">center</property>
                                    <signal name="toggled" handler="on_record_button_toggled"/>
                                    <style>
                                      <class name="text-button"/>
                                      <class name="image-button"/>
                                      <class name="destructive-action"/>
                                    </style>
                                    <child>
                                      <object class="GtkBox">
                                        <property name="spacing">6</property>
                                        <property name="valign">center</property>
                                        <child>
                                          <object class="GtkImage">
                                            <property name="valign">4</property>
                                            <property name="icon-name">media-record-symbolic</property>
                                            <property name="valign">center</property>
                                          </object>
                                        </child>
                                        <child>
                                          <object class="GtkLabel">
                                            <property name="valign">4</property>
                                            <property name="label">Record</property>
                                            <property name="valign">center</property>
                                          </object>
                                        </child>
                                      </object>
                                    </child>
                                  </object>
                                </child>
                                <child>
                                  <object class="GtkBox">
                                    <property name="valign">center</property>
                                    <style>
                                      <class name="linked"/>
                                    </style>
                                    <child>
                                      <object class="GtkToggleButton" id="grid_button">
                                        <property name="active">1</property>
                                        <property name="icon-name">view-grid-symbolic</property>
                                        <property name="valign">center</property>
                                      </object>
                                    </child>
                                    <child>
                                      <object class="GtkToggleButton" id="list_button">
                                        <property name="group">grid_button</property>
                                        <property name="icon-name">view-list-symbolic</property>
                                        <property name="valign">center</property>
                                      </object>
                                    </child>
                                  </object>
                                </child>
                                <child>
                                  <object class="GtkButton" id="circular_button">
                                    <property name="icon-name">emblem-system-symbolic</property>
                                    <property name="valign">center</property>
                                    <style>
                                      <class name="circular"/>
                                    </style>
                                  </object>
                                </child>
                              </object>
                            </child>
                            <child>
                              <object class="GtkLockButton" id="lockbutton">
                                <property name="valign">center</property>
                              </object>
                            </child>
                            <child>
                              <object class="GtkMenuButton">
                                <property name="icon-name">view-more-symbolic</property>
                                <property name="menu-model">new_style_menu_model</property>
                                <property name="valign">center</property>
                              </object>
                            </child>
                          </object>
                        </child>
                        <child>
                          <object class="GtkFrame">
                            <child>
                              <object class="GtkBox">
                                <child>
                                  <object class="GtkStackSidebar">
                                    <property name="stack">sidebar_stack</property>
                                  </object>
                                </child>
                                <child>
                                  <object class="GtkStack" id="sidebar_stack">
                                    <child>
                                      <object class="GtkStackPage">
                                        <property name="name">id</property>
                                        <property name="title">Identity</property>
                                        <property name="child">
                                          <object class="GtkBox">
                                            <property name="orientation">1</property>
                                            <property name="margin-start">20</property>
                                            <property name="margin-end">20</property>
                                            <property name="margin-top">20</property>
                                            <property name="margin-bottom">20</property>
                                            <property name="spacing">10</property>
                                            <property name="halign">3</property>
                                            <property name="valign">3</property>
                                            <child>
                                              <object class="GtkEntry">
                                                <property name="placeholder-text">First Name</property>
                                              </object>
                                            </child>
                                            <child>
                                              <object class="GtkEntry">
                                                <property name="placeholder-text">Last Name</property>
                                              </object>
                                            </child>
                                          </object>
                                        </property>
                                      </object>
                                    </child>
                                    <child>
                                      <object class="GtkStackPage">
                                        <property name="name">bd</property>
                                        <property name="title">Birthdate</property>
                                        <property name="child">
                                          <object class="GtkBox">
                                            <property name="orientation">1</property>
                                            <property name="margin-start">20</property>
                                            <property name="margin-end">20</property>
                                            <property name="margin-top">20</property>
                                            <property name="margin-bottom">20</property>
                                            <property name="spacing">10</property>
                                            <property name="halign">3</property>
                                            <property name="valign">3</property>
                                            <child>
                                              <object class="GtkBox">
                                                <property name="spacing">2</property>
                                                <child>
                                                  <object class="GtkComboBoxText">
                                                    <property name="active">9</property>
                                                    <items>
                                                      <item>1</item>
                                                      <item>2</item>
                                                      <item>3</item>
                                                      <item>4</item>
                                                      <item>5</item>
                                                      <item>6</item>
                                                      <item>7</item>
                                                      <item>8</item>
                                                      <item>9</item>
                                                      <item>10</item>
                                                      <item>11</item>
                                                      <item>12</item>
                                                      <item>13</item>
                                                      <item>14</item>
                                                      <item>15</item>
                                                      <item>16</item>
                                                      <item>17</item>
                                                      <item>18</item>
                                                      <item>19</item>
                                                      <item>20</item>
                                                      <item>21</item>
                                                      <item>22</item>
                                                      <item>23</item>
                                                      <item>24</item>
                                                      <item>25</item>
                                                      <item>26</item>
                                                      <item>27</item>
                                                      <item>28</item>
                                                      <item>29</item>
                                                      <item>30</item>
                                                      <item>31</item>
                                                    </items>
                                                  </object>
                                                </child>
                                                <child>
                                                  <object class="GtkComboBoxText">
                                                    <property name="active">9</property>
                                                    <items>
                                                      <item>January</item>
                                                      <item>February</item>
                                                      <item>March</item>
                                                      <item>April</item>
                                                      <item>May</item>
                                                      <item>June</item>
                                                      <item>July</item>
                                                      <item>August</item>
                                                      <item>September</item>
                                                      <item>October</item>
                                                      <item>November</item>
                                                      <item>December</item>
                                                    </items>
                                                  </object>
                                                </child>
                                              </object>
                                            </child>
                                            <child>
                                              <object class="GtkEntry">
                                                <property name="placeholder-text">Year</property>
                                              </object>
                                            </child>
                                          </object>
                                        </property>
                                      </object>
                                    </child>
                                    <child>
                                      <object class="GtkStackPage">
                                        <property name="name">ad</property>
                                        <property name="title">Address</property>
                                        <property name="child">
                                          <object class="GtkBox">
                                            <property name="orientation">1</property>
                                            <property name="margin-start">20</property>
                                            <property name="margin-end">20</property>
                                            <property name="margin-top">20</property>
                                            <property name="margin-bottom">20</property>
                                            <property name="halign">3</property>
                                            <property name="valign">3</property>
                                            <style>
                                              <class name="linked"/>
                                            </style>
                                            <child>
                                              <object class="GtkEntry">
                                                <property name="placeholder-text">Street</property>
                                              </object>
                                            </child>
                                            <child>
                                              <object class="GtkEntry">
                                                <property name="placeholder-text">City</property>
                                              </object>
                                            </child>
                                            <child>
                                              <object class="GtkEntry">
                                                <property name="placeholder-text">Province</property>
                                              </object>
                                            </child>
                                          </object>
                                        </property>
                                      </object>
                                    </child>
                                    <child>
                                      <object class="GtkStackPage">
                                        <property name="name">pg</property>
                                        <property name="title">Pages</property>
                                        <property name="child">
                                          <object class="GtkBox">
                                            <property name="orientation">1</property>
                                            <property name="margin-start">20</property>
                                            <property name="margin-end">20</property>
                                            <property name="margin-top">20</property>
                                            <property name="margin-bottom">20</property>
                                            <property name="halign">3</property>
                                            <property name="valign">3</property>
                                            <style>
                                              <class name="linked"/>
                                            </style>
                                            <child>
                                              <object class="GtkComboBoxText" id="page_combo">
                                                <property name="active">0</property>
                                                <signal name="changed" handler="on_page_combo_changed"/>
                                                <items>
                                                  <item>Range</item>
                                                  <item>All</item>
                                                  <item>Current</item>
                                                  <item>-</item>
                                                  <item>None</item>
                                                </items>
                                              </object>
                                            </child>
                                            <child>
                                              <object class="GtkSpinButton" id="range_from_spin">
                                                <property name="adjustment">pg_adjustment</property>
                                                <signal name="value-changed" handler="on_range_from_changed"/>
                                              </object>
                                            </child>
                                            <child>
                                              <object class="GtkSpinButton" id="range_to_spin">
                                                <property name="adjustment">pg_adjustment2</property>
                                                <signal name="value-changed" handler="on_range_to_changed"/>
                                              </object>
                                            </child>
                                            <child>
                                              <object class="GtkButton" id="print_button">
                                                <property name="label">Print</property>
                                                <property name="action-name">win.print</property>
                                              </object>
                                            </child>
                                          </object>
                                        </property>
                                      </object>
                                    </child>
                                  </object>
                                </child>
                              </object>
                            </child>
                          </object>
                        </child>
                        <child>
                          <object class="GtkBox">
                            <child>
                              <object class="GtkBox">
                                <property name="orientation">1</property>
                                <style>
                                  <class name="linked"/>
                                </style>
                                <child>
                                  <object class="GtkButton" id="toolbutton1">
                                    <property name="icon-name">document-open-symbolic</property>
                                    <property name="focus-on-click">0</property>
                                    <property name="tooltip-text" translatable="1">Insert ⌘</property>
                                  </object>
                                </child>
                                <child>
                                  <object class="GtkButton" id="toolbutton2">
                                    <property name="icon-name">send-to-symbolic</property>
                                    <property name="focus-on-click">0</property>
                                    <property name="tooltip-text" translatable="1">Insert ⚽</property>
                                  </object>
                                </child>
                                <child>
                                  <object class="GtkButton" id="toolbutton3">
                                    <property name="icon-name">view-fullscreen-symbolic</property>
                                    <property name="focus-on-click">0</property>
                                    <property name="tooltip-text" translatable="1">Insert ⤢</property>
                                  </object>
                                </child>
                                <child>
                                  <object class="GtkButton" id="toolbutton4">
                                    <property name="icon-name">star-new-symbolic</property>
                                    <property name="focus-on-click">0</property>
                                    <property name="tooltip-text" translatable="1">Insert ☆</property>
                                  </object>
                                </child>
                              </object>
                            </child>
                            <child>
                              <object class="GtkScrolledWindow">
                                <property name="has-frame">1</property>
                                <property name="hexpand">1</property>
                                <child>
                                  <object class="GtkTextView" id="tooltextview"/>
                                </child>
                              </object>
                            </child>
                            <child>
                              <object class="GtkBox">
                                <property name="orientation">1</property>
                                <child>
                                  <object class="GtkBox">
                                    <property name="orientation">1</property>
                                    <style>
                                      <class name="linked"/>
                                    </style>
                                    <child>
                                      <object class="GtkButton" id="cutbutton">
                                        <property name="sensitive">0</property>
                                        <property name="icon-name">edit-cut-symbolic</property>
                                        <property name="focus-on-click">0</property>
                                        <property name="tooltip-text" translatable="1">Cut</property>
                                      </object>
                                    </child>
                                    <child>
                                      <object class="GtkButton" id="copybutton">
                                        <property name="sensitive">0</property>
                                        <property name="icon-name">edit-copy-symbolic</property>
                                        <property name="focus-on-click">0</property>
                                        <property name="tooltip-text" translatable="1">Copy</property>
                                      </object>
                                    </child>
                                    <child>
                                      <object class="GtkButton" id="pastebutton">
                                        <property name="sensitive">0</property>
                                        <property name="icon-name">edit-paste-symbolic</property>
                                        <property name="focus-on-click">0</property>
                                        <property name="tooltip-text" translatable="1">Paste</property>
                                      </object>
                                    </child>
                                  </object>
                                </child>
                                <child>
                                  <object class="GtkButton" id="deletebutton">
                                    <property name="sensitive">0</property>
                                    <property name="valign">2</property>
                                    <property name="icon-name">edit-delete-symbolic</property>
                                    <property name="focus-on-click">0</property>
                                    <property name="tooltip-text" translatable="1">Delete</property>
                                  </object>
                                </child>
                              </object>
                            </child>
                          </object>
                        </child>
                        <child>
                          <object class="GtkOverlay">
                            <child type="overlay">
                              <object class="GtkBox" id="totem_like_osd">
                                <property name="visible">0</property>
                                <property name="opacity">0.9</property>
                                <property name="margin-start">20</property>
                                <property name="margin-end">20</property>
                                <property name="margin-top">20</property>
                                <property name="margin-bottom">20</property>
                                <property name="valign">2</property>
                                <style>
                                  <class name="osd"/>
                                </style>
                                <child>
                                  <object class="GtkBox">
                                    <style>
                                      <class name="linked"/>
                                    </style>
                                    <child>
                                      <object class="GtkButton">
                                        <property name="icon-name">go-previous-symbolic</property>
                                      </object>
                                    </child>
                                    <child>
                                      <object class="GtkButton">
                                        <property name="icon-name">go-next-symbolic</property>
                                      </object>
                                    </child>
                                  </object>
                                </child>
                                <child>
                                  <object class="GtkScale">
                                    <property name="hexpand">1</property>
                                    <property name="adjustment">adjustment1</property>
                                  </object>
                                </child>
                                <child>
                                  <object class="GtkVolumeButton">
                                    <property name="orientation">1</property>
                                    <property name="value">.5</property>
                                    <style>
                                      <class name="image-button"/>
                                    </style>
                                  </object>
                                </child>
                              </object>
                            </child>
                            <child>
                              <object class="GtkFrame" id="osd_frame">
                                <child>
                                  <object class="GtkPaned">
                                    <property name="wide-handle">1</property>
                                    <child>
                                      <object class="GtkNotebook">
                                        <property name="show-border">0</property>
                                        <child type="action-end">
                                          <object class="GtkMenuButton">
                                            <property name="valign">3</property>
                                            <property name="popover">notebook_info_popover2</property>
                                            <property name="icon-name">emblem-important-symbolic</property>
                                            <property name="has-frame">0</property>
                                            <style>
                                              <class name="circular"/>
                                            </style>
                                          </object>
                                        </child>
                                        <child>
                                          <object class="GtkNotebookPage">
                                            <property name="tab-expand">1</property>
                                            <property name="child">
                                              <object class="GtkBox" id="closable_page_1">
                                                <property name="height-request">120</property>
                                              </object>
                                            </property>
                                            <property name="tab">
                                              <object class="GtkBox">
                                                <child>
                                                  <object class="GtkLabel">
                                                    <property name="label" translatable="1">Page 1</property>
                                                    <property name="halign">3</property>
                                                    <property name="hexpand">1</property>
                                                  </object>
                                                </child>
                                                <child>
                                                  <object class="GtkButton">
                                                    <property name="has-frame">0</property>
                                                    <property name="focus-on-click">0</property>
                                                    <property name="icon-name">window-close-symbolic</property>
                                                    <signal name="clicked" handler="tab_close_cb" object="closable_page_1"/>
                                                    <style>
                                                      <class name="small-button"/>
                                                    </style>
                                                  </object>
                                                </child>
                                              </object>
                                            </property>
                                          </object>
                                        </child>
                                        <child>
                                          <object class="GtkNotebookPage">
                                            <property name="tab-expand">1</property>
                                            <property name="child">
                                              <object class="GtkBox" id="closable_page_2">
                                                <property name="vexpand">1</property>
                                              </object>
                                            </property>
                                            <property name="tab">
                                              <object class="GtkBox">
                                                <child>
                                                  <object class="GtkLabel">
                                                    <property name="label" translatable="1">Page 2</property>
                                                    <property name="halign">3</property>
                                                    <property name="hexpand">1</property>
                                                  </object>
                                                </child>
                                                <child>
                                                  <object class="GtkButton">
                                                    <property name="has-frame">0</property>
                                                    <property name="focus-on-click">0</property>
                                                    <property name="icon-name">window-close-symbolic</property>
                                                    <signal name="clicked" handler="tab_close_cb" object="closable_page_2"/>
                                                    <style>
                                                      <class name="small-button"/>
                                                    </style>
                                                  </object>
                                                </child>
                                              </object>
                                            </property>
                                          </object>
                                        </child>
                                      </object>
                                    </child>
                                    <child>
                                      <object class="GtkNotebook">
                                        <property name="show-border">0</property>
                                        <child>
                                          <object class="GtkNotebookPage">
                                            <property name="child">
                                              <object class="GtkBox">
                                                <property name="vexpand">1</property>
                                              </object>
                                            </property>
                                            <property name="tab">
                                              <object class="GtkLabel">
                                                <property name="label" translatable="1">Page 3</property>
                                              </object>
                                            </property>
                                          </object>
                                        </child>
                                      </object>
                                    </child>
                                  </object>
                                </child>
                                <child>
                                  <object class="GtkGestureClick">
                                    <signal name="pressed" handler="osd_frame_pressed" object="osd_frame" swapped="no"/>
                                  </object>
                                </child>
                              </object>
                            </child>
                          </object>
                        </child>
                      </object>
                    </child>
                    <child>
                      <object class="GtkBox">
                        <property name="orientation">1</property>
                        <property name="spacing">10</property>
                        <child>
                          <object class="GtkBox">
                            <child>
                              <object class="GtkEntry">
                                <property name="hexpand">1</property>
                                <property name="placeholder-text" translatable="1">Name…</property>
                                <property name="completion">name_completion</property>
                              </object>
                            </child>
                            <child>
                              <object class="GtkEntry">
                                <property name="hexpand">1</property>
                                <property name="show-emoji-icon">1</property>
                                <property name="placeholder-text" translatable="1">Age…</property>
                                <signal name="notify::text" handler="age_entry_changed"/>
                              </object>
                            </child>
                            <style>
                              <class name="linked"/>
                            </style>
                          </object>
                        </child>
                        <child>
                          <object class="GtkNotebook">
                            <property name="scrollable">1</property>
                            <child type="action-end">
                              <object class="GtkMenuButton">
                                <property name="valign">3</property>
                                <property name="popover">notebook_info_popover</property>
                                <property name="icon-name">emblem-important-symbolic</property>
                                <property name="has-frame">0</property>
                                <style>
                                  <class name="circular"/>
                                </style>
                              </object>
                            </child>
                            <child>
                              <object class="GtkNotebookPage">
                                <property name="tab-expand">1</property>
                                <property name="child">
                                  <object class="GtkBox" id="box_for_context">
                                    <property name="height-request">120</property>
                                  </object>
                                </property>
                                <property name="tab">
                                  <object class="GtkLabel">
                                    <property name="label" translatable="1">Page 1</property>
                                  </object>
                                </property>
                              </object>
                            </child>
                            <child>
                              <object class="GtkNotebookPage">
                                <property name="tab-expand">1</property>
                                <property name="child">
                                  <object class="GtkBox">
                                    <property name="height-request">40</property>
                                  </object>
                                </property>
                                <property name="tab">
                                  <object class="GtkLabel">
                                    <property name="label" translatable="1">Page 2</property>
                                  </object>
                                </property>
                              </object>
                            </child>
                            <child>
                              <object class="GtkNotebookPage">
                                <property name="tab-expand">1</property>
                                <property name="child">
                                  <object class="GtkBox"/>
                                </property>
                                <property name="tab">
                                  <object class="GtkLabel">
                                    <property name="label" translatable="1">Page 3</property>
                                  </object>
                                </property>
                              </object>
                            </child>
                            <child>
                              <object class="GtkNotebookPage">
                                <property name="tab-expand">1</property>
                                <property name="child">
                                  <object class="GtkBox"/>
                                </property>
                                <property name="tab">
                                  <object class="GtkLabel">
                                    <property name="label" translatable="1">Page 4</property>
                                  </object>
                                </property>
                              </object>
                            </child>
                            <child>
                              <object class="GtkNotebookPage">
                                <property name="tab-expand">1</property>
                                <property name="child">
                                  <object class="GtkBox"/>
                                </property>
                                <property name="tab">
                                  <object class="GtkLabel">
                                    <property name="label" translatable="1">Page 5</property>
                                  </object>
                                </property>
                              </object>
                            </child>
                          </object>
                        </child>
                        <child>
                          <object class="GtkColorChooserWidget" id="cchooser">
                            <property name="show-editor">1</property>
                          </object>
                        </child>
                      </object>
                    </child>
                  </object>
                </property>
              </object>
            </child>
          </object>
        </child>
      </object>
    </child>
  </object>
  <object class="GtkMessageDialog" id="info_dialog">
    <property name="transient-for">window</property>
    <property name="resizable">0</property>
    <property name="modal">1</property>
    <property name="text" translatable="1">Do something?</property>
    <property name="secondary-text" translatable="1">If you don't do something,
bad things might happen.</property>
    <property name="hide-on-close">1</property>
    <child type="action">
      <object class="GtkButton" id="cancel_info_dialog">
        <property name="label" translatable="1">_Cancel</property>
        <property name="use-underline">1</property>
      </object>
    </child>
    <child type="action">
      <object class="GtkButton" id="doit_info_dialog">
        <property name="label" translatable="1">_Do It</property>
        <property name="use-underline">1</property>
      </object>
    </child>
    <action-widgets>
      <action-widget response="cancel">cancel_info_dialog</action-widget>
      <action-widget response="ok" default="true">doit_info_dialog</action-widget>
    </action-widgets>
  </object>
  <object class="GtkDialog" id="action_dialog">
    <property name="transient-for">window</property>
    <property name="resizable">0</property>
    <property name="modal">1</property>
    <property name="use-header-bar">1</property>
    <property name="title" translatable="1">Zelda</property>
    <property name="hide-on-close">1</property>
    <property name="default-widget">act_action_dialog</property>
    <child internal-child="content_area">
      <object class="GtkBox">
        <child>
          <object class="GtkLabel">
            <property name="margin-start">20</property>
            <property name="margin-end">20</property>
            <property name="margin-top">20</property>
            <property name="margin-bottom">20</property>
            <property name="label" translatable="1">To free the princess, you have to slay the dragon.</property>
          </object>
        </child>
      </object>
    </child>
    <child type="action">
      <object class="GtkButton" id="cancel_action_dialog">
        <property name="label" translatable="1">_Run</property>
        <property name="use-underline">1</property>
      </object>
    </child>
    <child type="action">
      <object class="GtkButton" id="act_action_dialog">
        <property name="label" translatable="1">_Act</property>
        <property name="use-underline">1</property>
      </object>
    </child>
    <action-widgets>
      <action-widget response="cancel">cancel_action_dialog</action-widget>
      <action-widget response="ok" default="true">act_action_dialog</action-widget>
    </action-widgets>
  </object>
  <object class="GtkDialog" id="preference_dialog">
    <property name="transient-for">window</property>
    <property name="modal">1</property>
    <property name="resizable">0</property>
    <property name="use-header-bar">1</property>
    <property name="title" translatable="1">Settings</property>
    <property name="hide-on-close">1</property>
    <child internal-child="content_area">
      <object class="GtkBox">
        <child>
          <object class="GtkGrid">
            <property name="row-spacing">10</property>
            <property name="column-spacing">10</property>
            <property name="margin-start">20</property>
            <property name="margin-end">20</property>
            <property name="margin-top">20</property>
            <property name="margin-bottom">20</property>
            <child>
              <object class="GtkLabel">
                <property name="halign">2</property>
                <property name="valign">4</property>
                <property name="label">_Details</property>
                <property name="use-underline">1</property>
                <property name="mnemonic-widget">details_entry</property>
                <style>
                  <class name="dim-label"/>
                </style>
                <layout>
                  <property name="column">0</property>
                  <property name="row">0</property>
                </layout>
              </object>
            </child>
            <child>
              <object class="GtkEntry" id="details_entry">
                <property name="valign">4</property>
                <signal name="notify::text" handler="validate_more_details" object="more_details_entry" swapped="yes"/>
                <layout>
                  <property name="column">1</property>
                  <property name="row">0</property>
                  <property name="column-span">2</property>
                </layout>
              </object>
            </child>
            <child>
              <object class="GtkLabel">
                <property name="halign">2</property>
                <property name="valign">4</property>
                <property name="label">More D_etails</property>
                <property name="use-underline">1</property>
                <property name="mnemonic-widget">more_details_entry</property>
                <style>
                  <class name="dim-label"/>
                </style>
                <layout>
                  <property name="column">0</property>
                  <property name="row">1</property>
                </layout>
              </object>
            </child>
            <child>
              <object class="GtkEntry" id="more_details_entry">
                <property name="valign">4</property>
                <signal name="notify::text" handler="validate_more_details" object="details_entry" swapped="no"/>
                <layout>
                  <property name="column">1</property>
                  <property name="row">1</property>
                  <property name="column-span">2</property>
                </layout>
              </object>
            </child>
            <child>
              <object class="GtkLabel">
                <property name="halign">2</property>
                <property name="valign">4</property>
                <property name="label">_Level</property>
                <property name="use-underline">1</property>
                <property name="mnemonic-widget">level_scale</property>
                <style>
                  <class name="dim-label"/>
                </style>
                <layout>
                  <property name="column">0</property>
                  <property name="row">2</property>
                </layout>
              </object>
            </child>
            <child>
              <object class="GtkScale" id="level_scale">
                <property name="valign">4</property>
                <property name="adjustment">adjustment1</property>
                <signal name="value-changed" handler="level_scale_value_changed"/>
                <layout>
                  <property name="column">1</property>
                  <property name="row">2</property>
                  <property name="column-span">2</property>
                </layout>
              </object>
            </child>
            <child>
              <object class="GtkLabel">
                <property name="halign">2</property>
                <property name="valign">4</property>
                <property name="label">_Mode</property>
                <property name="use-underline">1</property>
                <property name="mnemonic-widget">mode_switch</property>
                <style>
                  <class name="dim-label"/>
                </style>
                <layout>
                  <property name="column">0</property>
                  <property name="row">3</property>
                </layout>
              </object>
            </child>
            <child>
              <object class="GtkSwitch" id="mode_switch">
                <property name="halign">1</property>
                <property name="valign">4</property>
                <signal name="state-set" handler="mode_switch_state_set"/>
                <layout>
                  <property name="column">1</property>
                  <property name="row">3</property>
                </layout>
              </object>
            </child>
            <child>
              <object class="GtkLabel" id="error_label">
                <property name="visible">0</property>
                <property name="halign">1</property>
                <property name="valign">4</property>
                <property name="label">Level too low</property>
                <style>
                  <class name="error"/>
                </style>
                <layout>
                  <property name="column">2</property>
                  <property name="row">3</property>
                </layout>
              </object>
            </child>
          </object>
        </child>
      </object>
    </child>
  </object>
  <object class="GtkDialog" id="selection_dialog">
    <property name="transient-for">window</property>
    <property name="modal">1</property>
    <property name="use-header-bar">1</property>
    <property name="title" translatable="1">Choose one</property>
    <property name="hide-on-close">1</property>
    <property name="default-widget">select_selection_dialog</property>
    <child internal-child="content_area">
      <object class="GtkBox">
        <child>
          <object class="GtkFlowBox" id="selection_flowbox">
            <property name="row-spacing">10</property>
            <property name="column-spacing">10</property>
            <property name="margin-start">10</property>
            <property name="margin-end">10</property>
            <property name="margin-top">10</property>
            <property name="margin-bottom">10</property>
            <property name="min-children-per-line">3</property>
            <property name="max-children-per-line">9</property>
          </object>
        </child>
      </object>
    </child>
    <child type="action">
      <object class="GtkButton" id="cancel_selection_dialog">
        <property name="label" translatable="1">_Cancel</property>
        <property name="use-underline">1</property>
      </object>
    </child>
    <child type="action">
      <object class="GtkButton" id="select_selection_dialog">
        <property name="label" translatable="1">_Select</property>
        <property name="use-underline">1</property>
      </object>
    </child>
    <action-widgets>
      <action-widget response="cancel">cancel_selection_dialog</action-widget>
      <action-widget response="ok" default="true">select_selection_dialog</action-widget>
    </action-widgets>
  </object>
  <object class="GtkPopover" id="open_popover">
    <child>
      <object class="GtkGrid">
        <property name="margin-start">10</property>
        <property name="margin-end">10</property>
        <property name="margin-top">10</property>
        <property name="margin-bottom">10</property>
        <property name="row-spacing">10</property>
        <property name="column-spacing">10</property>
        <child>
          <object class="GtkLabel" id="title_label">
            <property name="label">Title:</property>
            <property name="xalign">1</property>
          </object>
        </child>
        <child>
          <object class="GtkLabel" id="description_label">
            <property name="valign">1</property>
            <property name="label">Description:</property>
            <property name="xalign">1</property>
            <layout>
              <property name="row">1</property>
              <property name="column">0</property>
            </layout>
          </object>
        </child>
        <child>
          <object class="GtkScrolledWindow">
            <property name="valign">1</property>
            <property name="has-frame">1</property>
            <property name="min-content-height">70</property>
            <property name="max-content-height">120</property>
            <property name="min-content-width">100</property>
            <property name="max-content-width">100</property>
            <child>
              <object class="GtkTextView" id="open_popover_textview"/>
            </child>
            <layout>
              <property name="column">1</property>
              <property name="row">1</property>
              <property name="column-span">2</property>
            </layout>
          </object>
        </child>
        <child>
          <object class="GtkEntry" id="open_popover_entry">
            <property name="activates-default">1</property>
            <layout>
              <property name="row">0</property>
              <property name="column">1</property>
              <property name="column-span">2</property>
            </layout>
          </object>
        </child>
        <child>
          <object class="GtkExpander">
            <child type="label">
              <object class="GtkLabel">
                <property name="label">Extra Info</property>
              </object>
            </child>
            <child>
              <object class="GtkEntry" id="extra_info_entry">
                <property name="placeholder-text">Tell me anything…</property>
                <property name="progress-fraction">0.2</property>
              </object>
            </child>
            <layout>
              <property name="column">1</property>
              <property name="row">2</property>
              <property name="column-span">2</property>
            </layout>
          </object>
        </child>
        <child>
          <object class="GtkMenuButton">
            <property name="halign">2</property>
            <property name="icon-name">emblem-system-symbolic</property>
            <property name="menu-model">gear_menu_model</property>
            <property name="tooltip-text">This is a menu button</property>
            <layout>
              <property name="column">1</property>
              <property name="row">3</property>
            </layout>
          </object>
        </child>
        <child>
          <object class="GtkButton" id="open_popover_button">
            <property name="label">_Open</property>
            <property name="use-underline">1</property>
            <property name="sensitive">0</property>
            <style>
              <class name="suggested-action"/>
            </style>
            <layout>
              <property name="column">2</property>
              <property name="row">3</property>
            </layout>
          </object>
        </child>
      </object>
    </child>
  </object>
  <object class="GtkSizeGroup">
    <property name="mode">2</property>
    <widgets>
      <widget name="listboxrow1"/>
      <widget name="listboxrow2"/>
      <widget name="listboxrow3"/>
      <widget name="listboxrow4"/>
      <widget name="listboxrow5"/>
      <widget name="listboxrow6"/>
      <widget name="listboxrow7"/>
      <widget name="listboxrow8"/>
    </widgets>
  </object>
  <object class="GtkSizeGroup">
    <property name="mode">3</property>
    <widgets>
      <widget name="panedframe1"/>
      <widget name="panedframe2"/>
    </widgets>
  </object>
  <object class="GtkPopover" id="notebook_info_popover">
    <property name="autohide">0</property>
    <child>
      <object class="GtkLabel">
        <property name="label">No updates at this time</property>
      </object>
    </child>
  </object>
  <object class="GtkPopover" id="notebook_info_popover3">
    <property name="autohide">0</property>
    <child>
      <object class="GtkLabel">
        <property name="label">You&apos;re in too deep!</property>
      </object>
    </child>
  </object>
  <object class="GtkPopover" id="notebook_info_popover2">
    <property name="autohide">0</property>
    <child>
      <object class="GtkBox">
        <child>
          <object class="GtkLabel">
            <property name="label">Hidden gems:</property>
          </object>
        </child>
        <child>
          <object class="GtkMenuButton">
            <property name="valign">3</property>
            <property name="popover">notebook_info_popover3</property>
            <property name="icon-name">emblem-important-symbolic</property>
            <property name="has-frame">0</property>
            <style>
              <class name="circular"/>
            </style>
          </object>
        </child>
      </object>
    </child>
  </object>
  <menu id="new_style_menu_model">
    <section>
      <attribute name="display-hint">circular-buttons</attribute>
      <item>
        <attribute name="verb-icon">printer-symbolic</attribute>
        <attribute name="label" translatable="yes">Print all the things!</attribute>
        <attribute name="action">win.print</attribute>
      </item>
      <item>
        <attribute name="verb-icon">emblem-shared-symbolic</attribute>
        <attribute name="label" translatable="yes">Share all the things!</attribute>
        <attribute name="action">app.share</attribute>
      </item>
    </section>
    <section>
      <item>
        <attribute name="label" translatable="yes">Open in New Window</attribute>
        <attribute name="action">app.open-in</attribute>
      </item>
    </section>
    <section>
      <attribute name="display-hint">inline-buttons</attribute>
      <attribute name="label" translatable="yes">Edit</attribute>
      <item>
        <attribute name="verb-icon">edit-cut-symbolic</attribute>
        <attribute name="label" translatable="yes">Cut</attribute>
        <attribute name="action">app.cut</attribute>
      </item>
      <item>
        <attribute name="verb-icon">edit-copy-symbolic</attribute>
        <attribute name="label" translatable="yes">Copy</attribute>
        <attribute name="action">app.copy</attribute>
      </item>
      <item>
        <attribute name="verb-icon">edit-paste-symbolic</attribute>
        <attribute name="label" translatable="yes">Paste</attribute>
        <attribute name="action">app.paste</attribute>
      </item>
    </section>
    <section>
      <item>
        <attribute name="label" translatable="yes">Pin</attribute>
        <attribute name="action">app.pin</attribute>
      </item>
      <item>
        <attribute name="label" translatable="yes">Select Labels…</attribute>
        <attribute name="action">app.labels</attribute>
      </item>
      <item>
        <attribute name="label" translatable="yes">Share…</attribute>
        <attribute name="action">app.share</attribute>
      </item>
    </section>
    <section>
      <submenu>
        <attribute name="label" translatable="yes">Basement</attribute>
        <section>
          <item>
            <attribute name="label" translatable="yes">Berk</attribute>
            <attribute name="action">app.berk</attribute>
          </item>
          <item>
            <attribute name="label" translatable="yes">Broni</attribute>
            <attribute name="action">app.broni</attribute>
          </item>
          <item>
            <attribute name="label" translatable="yes">Drutt</attribute>
            <attribute name="action">app.drutt</attribute>
          </item>
          <item>
            <attribute name="label" translatable="yes">The Thing Upstairs</attribute>
            <attribute name="action">app.upstairs</attribute>
          </item>
        </section>
      </submenu>
    </section>
    <section>
      <attribute name="label" translatable="yes">Size</attribute>
      <item>
        <attribute name="label" translatable="yes">Large</attribute>
        <attribute name="action">app.size</attribute>
        <attribute name="target">large</attribute>
      </item>
      <item>
        <attribute name="label" translatable="yes">Medium</attribute>
        <attribute name="action">app.size</attribute>
        <attribute name="target">medium</attribute>
      </item>
      <item>
        <attribute name="label" translatable="yes">Small</attribute>
        <attribute name="action">app.size</attribute>
        <attribute name="target">small</attribute>
      </item>
    </section>
    <section>
      <item>
        <attribute name="label" translatable="yes">Move to Trash</attribute>
        <attribute name="action">win.delete</attribute>
      </item>
    </section>
  </menu>
  <menu id="new_style_context_menu_model">
    <section>
      <item>
        <attribute name="label" translatable="yes">Open</attribute>
        <attribute name="action">win.open</attribute>
      </item>
    </section>
    <section>
      <item>
        <attribute name="label" translatable="yes">Open in New Tab</attribute>
        <attribute name="action">app.open-tab</attribute>
      </item>
      <item>
        <attribute name="label" translatable="yes">Open in New Window</attribute>
        <attribute name="action">app.open-window</attribute>
      </item>
    </section>
    <section>
      <item>
        <attribute name="label" translatable="yes">Cut</attribute>
        <attribute name="action">app.cut</attribute>
      </item>
      <item>
        <attribute name="label" translatable="yes">Copy</attribute>
        <attribute name="action">app.copy</attribute>
      </item>
    </section>
    <section>
      <submenu>
        <attribute name="label" translatable="yes">Options</attribute>
        <section>
          <item>
            <attribute name="label" translatable="yes">Option A</attribute>
            <attribute name="action">app.option-a</attribute>
          </item>
          <item>
            <attribute name="label" translatable="yes">Option B</attribute>
            <attribute name="action">app.option-b</attribute>
          </item>
          <item>
            <attribute name="label" translatable="yes">Option C</attribute>
            <attribute name="action">app.option-c</attribute>
          </item>
          <item>
            <attribute name="label" translatable="yes">Option D</attribute>
            <attribute name="action">app.option-d</attribute>
          </item>
        </section>
      </submenu>
    </section>
    <section>
      <item>
        <attribute name="label" translatable="yes">Move to Trash</attribute>
        <attribute name="action">win.delete</attribute>
      </item>
    </section>
  </menu>
  <menu id="menu_bar_model">
    <submenu>
      <attribute name="label" translatable="yes">_File</attribute>
      <section>
        <item>
          <attribute name="label" translatable="yes">_New</attribute>
          <attribute name="action">app.new</attribute>
        </item>
        <item>
          <attribute name="label" translatable="yes">_Open</attribute>
          <attribute name="action">app.open</attribute>
        </item>
        <item>
          <attribute name="label" translatable="yes">_Save</attribute>
          <attribute name="action">app.save</attribute>
        </item>
        <item>
          <attribute name="label" translatable="yes">Save _As</attribute>
          <attribute name="action">app.save-as</attribute>
        </item>
      </section>
      <section>
        <item>
          <attribute name="label" translatable="yes">_Quit</attribute>
          <attribute name="action">app.quit</attribute>
        </item>
      </section>
    </submenu>
    <submenu>
      <attribute name="label" translatable="yes">_Edit</attribute>
      <section>
        <item>
          <attribute name="label" translatable="yes">Cu_t</attribute>
          <attribute name="action">app.cut</attribute>
        </item>
        <item>
          <attribute name="label" translatable="yes">_Copy</attribute>
          <attribute name="action">app.copy</attribute>
        </item>
        <item>
          <attribute name="label" translatable="yes">_Paste</attribute>
          <attribute name="action">app.paste</attribute>
        </item>
        <item>
          <attribute name="label" translatable="yes">Delete</attribute>
          <attribute name="action">win.delete</attribute>
        </item>
        <item>
          <attribute name="label" translatable="yes">Search</attribute>
          <attribute name="action">win.search</attribute>
        </item>
      </section>
      <section>
        <submenu>
          <attribute name="label" translatable="yes">C_hecks</attribute>
          <section>
            <item>
              <attribute name="label" translatable="yes">Check</attribute>
              <attribute name="action">app.check-on</attribute>
            </item>
            <item>
              <attribute name="label" translatable="yes">Check</attribute>
              <attribute name="action">app.check-off</attribute>
            </item>
            <item>
              <attribute name="label" translatable="yes">Check</attribute>
              <attribute name="action">app.check-on-disabled</attribute>
            </item>
            <item>
              <attribute name="label" translatable="yes">Check</attribute>
              <attribute name="action">app.check-off-disabled</attribute>
            </item>
            <item>
              <attribute name="label" translatable="yes">Check</attribute>
              <attribute name="action">app.check-no-action</attribute>
              <attribute name="hidden-when">action-missing</attribute>
            </item>
          </section>
        </submenu>
        <submenu>
          <attribute name="label" translatable="yes">_Radios</attribute>
          <section>
            <item>
              <attribute name="label" translatable="yes">Radio</attribute>
              <attribute name="action">app.radio-x</attribute>
              <attribute name="target">x</attribute>
            </item>
            <item>
              <attribute name="label" translatable="yes">Radio</attribute>
              <attribute name="action">app.radio-x</attribute>
              <attribute name="target">y</attribute>
            </item>
            <item>
              <attribute name="label" translatable="yes">Radio</attribute>
              <attribute name="action">app.radio-x-disabled</attribute>
              <attribute name="target">x</attribute>
            </item>
            <item>
              <attribute name="label" translatable="yes">Radio</attribute>
              <attribute name="action">app.radio-x-disabled</attribute>
              <attribute name="target">y</attribute>
            </item>
            <item>
              <attribute name="label" translatable="yes">Radio</attribute>
              <attribute name="action">app.radio-no-action</attribute>
              <attribute name="hidden-when">action-missing</attribute>
            </item>
          </section>
        </submenu>
      </section>
    </submenu>
    <submenu>
      <attribute name="label" translatable="yes">_View</attribute>
      <section>
        <item>
          <attribute name="label" translatable="yes">Dark Theme</attribute>
          <attribute name="action">win.dark</attribute>
        </item>
        <item>
          <attribute name="label" translatable="yes">Toolbar</attribute>
          <attribute name="action">win.toolbar</attribute>
        </item>
        <item>
          <attribute name="label" translatable="yes">Statusbar</attribute>
          <attribute name="action">win.statusbar</attribute>
        </item>
        <item>
          <attribute name="label" translatable="yes">Select Background</attribute>
          <attribute name="action">win.background</attribute>
        </item>
      </section>
    </submenu>
    <submenu>
      <attribute name="label" translatable="yes">_Help</attribute>
      <item>
        <attribute name="label" translatable="yes">About</attribute>
        <attribute name="action">app.about</attribute>
      </item>
    </submenu>
  </menu>
</interface>
"""