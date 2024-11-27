use "actor_pinning"
use @sleep[None](secs: USize)

use "Gtk"

actor Main
  new create(env': Env) =>
    GtkController(env')






actor GtkController
  let env: Env
  let auth: PinUnpinActorAuth

  new create(env': Env) =>
    env = env'
    auth = PinUnpinActorAuth(env.root)
    ActorPinning.request_pin(auth)
    initialize_gtk()

  be initialize_gtk() =>
    if ActorPinning.is_successfully_pinned(auth) then
      env.out.print("We are pinned")
      Gtk.init()
    else
      env.out.print("We are not pinned")
      initialize_gtk()
    end


  be done() =>
    ActorPinning.request_unpin(auth)
