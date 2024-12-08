use "GObject/Object"
use "Gtk/Button"

primitive Callbacks
  fun @window_close_request[A: GtkControllerBuilder tag](gobj: Pointer[GObject] tag, me: A) => None
    me.close_window()

  fun @button_a_clicked[A: GtkControllerBuilder tag](gobj: Pointer[GObject] tag, me: A) => None
    @printf("Button A Clicked\n".cstring())
    try
      let buttona: GtkButton iso = recover iso GtkButton.new_from_ptr(gobj)? end
      me.buttona_clicked(consume buttona)
    else
      @printf("Button A object creation fail\n".cstring())
    end
  fun @test_extfun() =>
    @printf("test_extfun\n".cstring())


