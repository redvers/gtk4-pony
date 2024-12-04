
actor Main
  new create(env': Env) =>
    GtkController(env')
    .>initialize_gtk()
