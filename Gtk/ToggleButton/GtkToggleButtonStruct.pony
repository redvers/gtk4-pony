use "../Button"

/*
  Source: /usr/include/gtk-4.0/gtk/gtktogglebutton.h:47
  Original Name: _GtkToggleButton
  Struct Size (bits):  256
  Struct Align (bits): 64

  Fields (Offset in bits):
     000000: [Struct size=256,fid: f523]: button
*/
struct GtkToggleButtonStruct
    embed button: GtkButtonStruct = GtkButtonStruct
