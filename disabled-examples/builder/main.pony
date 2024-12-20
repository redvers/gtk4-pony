use "actor_pinning"
use "../../Gtk/Application"

actor Main
  let env: Env
  let pinauth: PinUnpinActorAuth

  new create(env': Env) =>
    env = env'

    pinauth = PinUnpinActorAuth(env.root)

    let appstate: AppState iso = recover iso AppState("me.infect.builder") end
    let gtkapplication: GtkApplication =
      GtkApplication(pinauth, consume appstate)
    gtkapplication.run()
