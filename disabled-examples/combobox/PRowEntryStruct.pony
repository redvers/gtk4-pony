use "gobject"
use "collections"

struct PRowEntryStruct
  embed parent_instance: GObjectStruct = GObjectStruct
  var data: Array[GValue] = Array[GValue].create(16)

