
actor Main
  new create(env': Env) =>
//    GtkController(env')
    GtkControllerBuilder(env')
    .>initialize_gtk()
