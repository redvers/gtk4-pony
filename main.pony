
actor Main
  new create(env': Env) =>
    GtkControllerBuilder(env')
    .>initialize_gtk()
