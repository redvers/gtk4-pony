
actor Main
  new create(env': Env) =>
    let x: @{(): None} = Callbacks~test_extfun()
//    GtkController(env')
    GtkControllerBuilder(env')
    .>initialize_gtk()
