use "gobject"
use "collections"

struct PRowEntryStruct
  embed parent_instance: GObjectStruct = GObjectStruct
  var data: Array[GValueStruct] = Array[GValueStruct]

