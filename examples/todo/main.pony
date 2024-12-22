use "actor_pinning"
use "../../Gtk/Application"

actor Main
  let env: Env
  let pinauth: PinUnpinActorAuth

  new create(env': Env) =>
    env = env'

    pinauth = PinUnpinActorAuth(env.root)

    let todostate: ToDoState iso = recover iso ToDoState("me.infect.todo") end
    let gtkapplication: GtkApplication =
      GtkApplication(pinauth, consume todostate)
    gtkapplication.run()
