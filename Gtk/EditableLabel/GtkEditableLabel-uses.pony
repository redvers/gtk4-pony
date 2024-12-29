use "gobject"

/*
  Source: /usr/include/gtk-4.0/gtk/gtkeditablelabel.h:37
  Original Name: gtk_editable_label_get_editing/usr/include/gtk-4.0/gtk/gtkeditablelabel.h:37

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f593]
*/
//use @gtk_editable_label_get_editing[I32](self: NullablePointer[GtkEditableLabelStruct] tag)



/*
  Source: /usr/include/gtk-4.0/gtk/gtkeditablelabel.h:31
  Original Name: gtk_editable_label_get_type/usr/include/gtk-4.0/gtk/gtkeditablelabel.h:31

  Return Value: [FundamentalType(long unsigned int) size=64]

  Arguments:
*/
//use @gtk_editable_label_get_type[U64]()



/*
  Source: /usr/include/gtk-4.0/gtk/gtkeditablelabel.h:34
  Original Name: gtk_editable_label_new/usr/include/gtk-4.0/gtk/gtkeditablelabel.h:34

  Return Value: [PointerType size=64]->[Struct size=256,fid: f480]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @gtk_editable_label_new[GObjectStruct](str: Pointer[U8] tag)



/*
  Source: /usr/include/gtk-4.0/gtk/gtkeditablelabel.h:40
  Original Name: gtk_editable_label_start_editing/usr/include/gtk-4.0/gtk/gtkeditablelabel.h:40

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f593]
*/
//use @gtk_editable_label_start_editing[None](self: NullablePointer[GtkEditableLabelStruct] tag)



/*
  Source: /usr/include/gtk-4.0/gtk/gtkeditablelabel.h:43
  Original Name: gtk_editable_label_stop_editing/usr/include/gtk-4.0/gtk/gtkeditablelabel.h:43

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f593]
    [FundamentalType(int) size=32]
*/
//use @gtk_editable_label_stop_editing[None](self: NullablePointer[GtkEditableLabelStruct] tag, commit: I32)

