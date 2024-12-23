use "gobject"

/*
  Source: /usr/include/gtk-4.0/gtk/gtkbutton.h:119
  Original Name: gtk_button_get_can_shrink/usr/include/gtk-4.0/gtk/gtkbutton.h:119

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f523]
*/
//use @gtk_button_get_can_shrink[I32](button: GObjectStruct tag)



/*
  Source: /usr/include/gtk-4.0/gtk/gtkbutton.h:113
  Original Name: gtk_button_get_child/usr/include/gtk-4.0/gtk/gtkbutton.h:113

  Return Value: [PointerType size=64]->[Struct size=256,fid: f480]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f523]
*/
//use @gtk_button_get_child[GObjectStruct](button: GObjectStruct tag)



/*
  Source: /usr/include/gtk-4.0/gtk/gtkbutton.h:91
  Original Name: gtk_button_get_has_frame/usr/include/gtk-4.0/gtk/gtkbutton.h:91

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f523]
*/
//use @gtk_button_get_has_frame[I32](button: GObjectStruct tag)



/*
  Source: /usr/include/gtk-4.0/gtk/gtkbutton.h:107
  Original Name: gtk_button_get_icon_name/usr/include/gtk-4.0/gtk/gtkbutton.h:107

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f523]
*/
//use @gtk_button_get_icon_name[Pointer[U8]](button: GObjectStruct tag)



/*
  Source: /usr/include/gtk-4.0/gtk/gtkbutton.h:96
  Original Name: gtk_button_get_label/usr/include/gtk-4.0/gtk/gtkbutton.h:96

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f523]
*/
//use @gtk_button_get_label[Pointer[U8]](button: GObjectStruct tag)



/*
  Source: /usr/include/gtk-4.0/gtk/gtkbutton.h:77
  Original Name: gtk_button_get_type/usr/include/gtk-4.0/gtk/gtkbutton.h:77

  Return Value: [FundamentalType(long unsigned int) size=64]

  Arguments:
*/
//use @gtk_button_get_type[U64]()



/*
  Source: /usr/include/gtk-4.0/gtk/gtkbutton.h:101
  Original Name: gtk_button_get_use_underline/usr/include/gtk-4.0/gtk/gtkbutton.h:101

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f523]
*/
//use @gtk_button_get_use_underline[I32](button: GObjectStruct tag)



/*
  Source: /usr/include/gtk-4.0/gtk/gtkbutton.h:83
  Original Name: gtk_button_new_from_icon_name/usr/include/gtk-4.0/gtk/gtkbutton.h:83

  Return Value: [PointerType size=64]->[Struct size=256,fid: f480]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @gtk_button_new_from_icon_name[GObjectStruct](iconname: Pointer[U8] tag)



/*
  Source: /usr/include/gtk-4.0/gtk/gtkbutton.h:79
  Original Name: gtk_button_new/usr/include/gtk-4.0/gtk/gtkbutton.h:79

  Return Value: [PointerType size=64]->[Struct size=256,fid: f480]

  Arguments:
*/
use @gtk_button_new[GObjectStruct]()



/*
  Source: /usr/include/gtk-4.0/gtk/gtkbutton.h:81
  Original Name: gtk_button_new_with_label/usr/include/gtk-4.0/gtk/gtkbutton.h:81

  Return Value: [PointerType size=64]->[Struct size=256,fid: f480]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @gtk_button_new_with_label[GObjectStruct](label: Pointer[U8] tag)



/*
  Source: /usr/include/gtk-4.0/gtk/gtkbutton.h:85
  Original Name: gtk_button_new_with_mnemonic/usr/include/gtk-4.0/gtk/gtkbutton.h:85

  Return Value: [PointerType size=64]->[Struct size=256,fid: f480]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @gtk_button_new_with_mnemonic[GObjectStruct](label: Pointer[U8] tag)



/*
  Source: /usr/include/gtk-4.0/gtk/gtkbutton.h:116
  Original Name: gtk_button_set_can_shrink/usr/include/gtk-4.0/gtk/gtkbutton.h:116

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f523]
    [FundamentalType(int) size=32]
*/
//use @gtk_button_set_can_shrink[None](button: GObjectStruct tag, canshrink: I32)



/*
  Source: /usr/include/gtk-4.0/gtk/gtkbutton.h:110
  Original Name: gtk_button_set_child/usr/include/gtk-4.0/gtk/gtkbutton.h:110

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f523]
    [PointerType size=64]->[Struct size=256,fid: f480]
*/
//use @gtk_button_set_child[None](button: GObjectStruct tag, child: GObjectStruct tag)



/*
  Source: /usr/include/gtk-4.0/gtk/gtkbutton.h:88
  Original Name: gtk_button_set_has_frame/usr/include/gtk-4.0/gtk/gtkbutton.h:88

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f523]
    [FundamentalType(int) size=32]
*/
//use @gtk_button_set_has_frame[None](button: GObjectStruct tag, hasframe: I32)



/*
  Source: /usr/include/gtk-4.0/gtk/gtkbutton.h:104
  Original Name: gtk_button_set_icon_name/usr/include/gtk-4.0/gtk/gtkbutton.h:104

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f523]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @gtk_button_set_icon_name[None](button: GObjectStruct tag, iconname: Pointer[U8] tag)



/*
  Source: /usr/include/gtk-4.0/gtk/gtkbutton.h:93
  Original Name: gtk_button_set_label/usr/include/gtk-4.0/gtk/gtkbutton.h:93

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f523]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
//use @gtk_button_set_label[None](button: GObjectStruct tag, label: Pointer[U8] tag)



/*
  Source: /usr/include/gtk-4.0/gtk/gtkbutton.h:98
  Original Name: gtk_button_set_use_underline/usr/include/gtk-4.0/gtk/gtkbutton.h:98

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f523]
    [FundamentalType(int) size=32]
*/
//use @gtk_button_set_use_underline[None](button: GObjectStruct tag, useunderline: I32)

