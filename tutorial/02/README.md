# Making it graphical

## Bringing in the XML

We're going to keep it simple in our first example and just include the XML
text directly in the program.  A simple primitive will suffice:

```pony
primitive UI
  fun apply(): String val =>
"""
<<<< XML GOES HERE >>>>
"""
```

Now let's do something with it.

## Bulding the GtkBuilder

Go ahead and add our new dependencies at the top of `app_state.pony`.  Again,
note - we only include these subpackages if we're going to directly access
those objects.  Note we do not include `Gtk/Box`, `Gtk/Button`, or `Gtk/Label`
as we're not doing anything with it yet.

```pony
use "Gtk/Builder"
use "Gtk/ApplicationWindow"
```
Let's modify our `AppState.activate()` function as follows:

```pony
  fun activate(): =>
    Debug.out("I'm in the AppState.activate() callback\n")
    try
      let builder: GtkBuilder = GtkBuilder.new_from_string(UI())?
      build_ui(builder)
    else
      Debug.err("I failed to parse my GtkBuilder XML")
    end
```

We create a GtkBuilder instance from the provided XML string.  GtkBuilder
has built and assembled all of these objects in memory, but we still need
to make them visible and hook up any actions we want.

## Making the UI visible

We only have a few things left to do before we can see our application:

- Make a pony GtkApplicationWindow instance that references id="window"
- Inform GtkApplication that this Window is managed by it.
- Inform the GtkWindow that it needs to be visible.

```pony
  fun build_ui(builder: GtkBuilder)? =>
    let window: GtkApplicationWindow =
      try
        GtkApplicationWindow.new_from_builder(builder, "window")?
      else
        Debug.err("I was unable to find the GtkApplicationWindow")
        error
      end

    match gtkapplication
    | let app: GtkApplication tag => window.register_application(app)
    else
      Debug.err("We did not have a valid GtkApplication to link")
      error
    end

    window.set_visible(true)
```

... and that's it.

On the [next page](../03/), we'll learn how to make it do things when we click buttons!
