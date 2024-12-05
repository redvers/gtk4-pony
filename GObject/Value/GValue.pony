use @g_value_init[NullablePointer[GValue]](value: NullablePointer[GValue] tag, gtype: U64)

/*
  Source: /usr/include/glib-2.0/gobject/gvalue.h:113
  Original Name: _GValue
  Struct Size (bits):  192
  Struct Align (bits): 64

  Fields (Offset in bits):
     000000: [FundamentalType(long unsigned int) size=64]: g_type
     000064: [ArrayType size=(0-1)]->[UNION size=64]: data
*/
struct GValue
  var g_type: U64 = 0
  var data: U128 = 0

  fun init(value: NullablePointer[GValue] tag, gtype: U64): NullablePointer[GValue] =>
    @g_value_init(value, gtype)
