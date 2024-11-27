

/*
  Source: /usr/include/gtk-4.0/gtk/gtkmain.h:56
  Original Name: gtk_init/usr/include/gtk-4.0/gtk/gtkmain.h:56

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
use @gtk_init[None]()



/*
  Source: /usr/include/gtk-4.0/gtk/gtkwidget.h:442
  Original Name: gtk_widget_get_visible/usr/include/gtk-4.0/gtk/gtkwidget.h:442

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f480]
*/
use @gtk_widget_get_visible[I32](widget: NullablePointer[GtkWidget] tag)



/*
  Source: /usr/include/gtk-4.0/gtk/gtkwidget.h:444
  Original Name: gtk_widget_is_visible/usr/include/gtk-4.0/gtk/gtkwidget.h:444

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f480]
*/
use @gtk_widget_is_visible[I32](widget: NullablePointer[GtkWidget] tag)



/*
  Source: /usr/include/gtk-4.0/gtk/gtkwidget.h:439
  Original Name: gtk_widget_set_visible/usr/include/gtk-4.0/gtk/gtkwidget.h:439

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f480]
    [FundamentalType(int) size=32]
*/
use @gtk_widget_set_visible[None](widget: NullablePointer[GtkWidget] tag, visible: I32)



/*
  Source: /usr/include/gtk-4.0/gtk/gtkwindow.h:203
  Original Name: gtk_window_close/usr/include/gtk-4.0/gtk/gtkwindow.h:203

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f482]
*/
use @gtk_window_close[None](window: NullablePointer[GtkWindow] tag)



/*
  Source: /usr/include/gtk-4.0/gtk/gtkwindow.h:196
  Original Name: gtk_window_fullscreen/usr/include/gtk-4.0/gtk/gtkwindow.h:196

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f482]
*/
use @gtk_window_fullscreen[None](window: NullablePointer[GtkWindow] tag)



/*
  Source: /usr/include/gtk-4.0/gtk/gtkwindow.h:101
  Original Name: gtk_window_get_focus/usr/include/gtk-4.0/gtk/gtkwindow.h:101

  Return Value: [PointerType size=64]->[Struct size=256,fid: f480]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f482]
*/
use @gtk_window_get_focus[NullablePointer[GtkWidget]](window: NullablePointer[GtkWindow] tag)



/*
  Source: /usr/include/gtk-4.0/gtk/gtkwindow.h:93
  Original Name: gtk_window_get_title/usr/include/gtk-4.0/gtk/gtkwindow.h:93

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f482]
*/
use @gtk_window_get_title[Pointer[U8]](window: NullablePointer[GtkWindow] tag)



/*
  Source: /usr/include/gtk-4.0/gtk/gtkwindow.h:86
  Original Name: gtk_window_get_type/usr/include/gtk-4.0/gtk/gtkwindow.h:86

  Return Value: [FundamentalType(long unsigned int) size=64]

  Arguments:
*/
use @gtk_window_get_type[U64]()



/*
  Source: /usr/include/gtk-4.0/gtk/gtkwindow.h:192
  Original Name: gtk_window_maximize/usr/include/gtk-4.0/gtk/gtkwindow.h:192

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f482]
*/
use @gtk_window_maximize[None](window: NullablePointer[GtkWindow] tag)



/*
  Source: /usr/include/gtk-4.0/gtk/gtkwindow.h:188
  Original Name: gtk_window_minimize/usr/include/gtk-4.0/gtk/gtkwindow.h:188

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f482]
*/
use @gtk_window_minimize[None](window: NullablePointer[GtkWindow] tag)



/*
  Source: /usr/include/gtk-4.0/gtk/gtkwindow.h:88
  Original Name: gtk_window_new/usr/include/gtk-4.0/gtk/gtkwindow.h:88

  Return Value: [PointerType size=64]->[Struct size=256,fid: f480]

  Arguments:
*/
use @gtk_window_new[NullablePointer[GtkWidget]]()



/*
  Source: /usr/include/gtk-4.0/gtk/gtkwindow.h:98
  Original Name: gtk_window_set_focus/usr/include/gtk-4.0/gtk/gtkwindow.h:98

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f482]
    [PointerType size=64]->[Struct size=256,fid: f480]
*/
use @gtk_window_set_focus[None](window: NullablePointer[GtkWindow] tag, focus: NullablePointer[GtkWidget] tag)



/*
  Source: /usr/include/gtk-4.0/gtk/gtkwindow.h:90
  Original Name: gtk_window_set_title/usr/include/gtk-4.0/gtk/gtkwindow.h:90

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f482]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @gtk_window_set_title[None](window: NullablePointer[GtkWindow] tag, title: Pointer[U8] tag)



/*
  Source: /usr/include/gtk-4.0/gtk/gtkwindow.h:198
  Original Name: gtk_window_unfullscreen/usr/include/gtk-4.0/gtk/gtkwindow.h:198

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f482]
*/
use @gtk_window_unfullscreen[None](window: NullablePointer[GtkWindow] tag)



/*
  Source: /usr/include/gtk-4.0/gtk/gtkwindow.h:194
  Original Name: gtk_window_unmaximize/usr/include/gtk-4.0/gtk/gtkwindow.h:194

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f482]
*/
use @gtk_window_unmaximize[None](window: NullablePointer[GtkWindow] tag)



/*
  Source: /usr/include/gtk-4.0/gtk/gtkwindow.h:190
  Original Name: gtk_window_unminimize/usr/include/gtk-4.0/gtk/gtkwindow.h:190

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f482]
*/
use @gtk_window_unminimize[None](window: NullablePointer[GtkWindow] tag)



/*
  Source: /usr/include/gtk-4.0/gtk/gtkwindow.h:178
  Original Name: gtk_window_get_toplevels/usr/include/gtk-4.0/gtk/gtkwindow.h:178

  Return Value: [PointerType size=64]->[Struct size=,fid: f274]

  Arguments:
*/
use @gtk_window_get_toplevels[NullablePointer[GListModel]]()




/*
  Source: /usr/include/glib-2.0/glib/gmain.h:406
  Original Name: g_main_context_default/usr/include/glib-2.0/glib/gmain.h:406

  Return Value: [PointerType size=64]->[Struct size=,fid: f85]

  Arguments:
*/
use @g_main_context_default[NullablePointer[GMainContext]]()



/*
  Source: /usr/include/glib-2.0/glib/gmain.h:412
  Original Name: g_main_context_pending/usr/include/glib-2.0/glib/gmain.h:412

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f85]
*/
use @g_main_context_pending[I32](context: NullablePointer[GMainContext] tag)



/*
  Source: /usr/include/glib-2.0/glib/gmain.h:409
  Original Name: g_main_context_iteration/usr/include/glib-2.0/glib/gmain.h:409

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f85]
    [FundamentalType(int) size=32]
*/
use @g_main_context_iteration[I32](context: NullablePointer[GMainContext] tag, mayblock: I32)



/*
  Source: /usr/include/glib-2.0/gobject/gobject.h:643
  Original Name: g_signal_connect_object/usr/include/glib-2.0/gobject/gobject.h:643

  Return Value: [FundamentalType(long unsigned int) size=64]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
    [Enumeration size=32,fid: f140]
*/
use @g_signal_connect_object[U64](instance: Pointer[None] tag, detailedsignal: Pointer[U8] tag, chandler: Pointer[None] tag, gobject: Pointer[None] tag, connectflags: I32)



/*
  Source: /usr/include/glib-2.0/gobject/gsignal.h:409
  Original Name: g_signal_connect_data/usr/include/glib-2.0/gobject/gsignal.h:409

  Return Value: [FundamentalType(long unsigned int) size=64]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [Enumeration size=32,fid: f140]
*/
use @g_signal_connect_data[U64](instance: Pointer[None] tag, detailedsignal: Pointer[U8] tag, chandler: Pointer[None] tag, data: Any, destroydata: Pointer[None] tag, connectflags: I32)


