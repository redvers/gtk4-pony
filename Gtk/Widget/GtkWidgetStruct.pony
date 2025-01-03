use "gobject"

/*
  Source: /usr/include/gtk-4.0/gtk/gtkwidget.h:102
  Original Name: _GtkWidget
  Struct Size (bits):  256
  Struct Align (bits): 64

  Fields (Offset in bits):
     000000: [Struct size=192,fid: f143]: parent_instance
     000192: [PointerType size=64]->[Struct size=,fid: f480]: priv
*/
struct GtkWidgetStruct
    embed parent_instance: GObjectStruct = GObjectStruct
    var priv: Pointer[None] = Pointer[None]

