
type FilterState is (ToggleAll | ToggleActive | ToggleCompleted)
primitive ToggleAll       fun string(): String val => "ToggleAll"
primitive ToggleActive    fun string(): String val => "ToggleActive"
primitive ToggleCompleted fun string(): String val => "ToggleCompleted"

