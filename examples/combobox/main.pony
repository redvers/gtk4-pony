use "actor_pinning"

use "debug"

use "glib"
use "gobject"
use "gio"

use @printf[I32](fmt: Pointer[U8] tag, ...)
use "../../Gtk"
use "../../Gtk/Application"

use @exit[None](err: I32)

actor Main
  let env: Env

  new create(env': Env) =>
    env = env'

    let gtkapplication: GtkApplication =
      GtkApplication(PinUnpinActorAuth(env.root), recover iso GtkAppState("me.infect.comboboxes") end)
    gtkapplication.run()

