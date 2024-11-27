
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


struct GtkWindow
