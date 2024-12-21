# Making it do things

## Theory of GObjects, signals, callbacks, oh MY!

Every object in GObject (and consequently Gtk) has the concept of signals
and callbacks. 

### Signals

A signal is a "thing" that an object can "emit".  If we take our example
object heirarchy from our introduction:

        GObject
                -> GtkWidget
                            -> GtkWindow
                                        -> GtkApplicationWindow
                            -> GtkLabel

Our GtkApplicationWindow doesn't have any specific signals, but instead
inherits signals from underneath it.  Some examples:

| Signal        | Inherited From | Description |
|---------------| ---------------|-------------|
| close-request | GtkWindow      | Emitted when a user tries to close the Window |
| hide          | GtkWidget      | Emitted when the object is hidden |
| notify        | GObject        | Emitted when one of the object properties were modified |

All of the signals that are supported by, and how they are triggered is found
in the online documentation.

But the signal we're going to focus on in this example is `GtkButton::clicked`.

When a signal is emitted a series of callbacks are executed. Our goal is
to hookup the `clicked` signals for the buttons to functions that will
increment / decrement our counters and then display the new value.

### Hooking up Callbacks to Signals

There are multiple ways to do this:

- A Direct mapping of signal to callback
- Via `GtkActions`, which allow you to define "Application Logic" actions and hook up signals and callback to that.

We're going to start with the simplest:

### GtkButton::activate

The signature for the callback in the C documentation is:

```c
void
clicked (
  GtkButton* self,
  gpointer user_data
)
```

In pony, this translated to:

```pony
@{(GObjectStruct, Any): None}
```

The issue we have is that the callbacks are bare C functions, a simple C
function pointer - so we're not going to execute in the context of any
pony actor or class.

By design GObject callbacks have an optional `user_data` argument which
provides us a mechanism to get inside our AppState class!

In order to attach signals to the buttons, we're going to need references to
them both.  In order to change the text in the label, we will need access to that
too.

So, let's add the additional packages we need, and some new state variables:

```pony
use "Gtk/Button"
use "Gtk/Label"
```

and an additional field in the AppState class.

```pony
  var label: (GtkLabel | None) = None
```

Then, we'll modify the `activate()` function to add a new function called
`hookup_signals()` and assign the label to its new field variable for later.

```pony
  fun ref activate(): None =>
    Debug.err("I'm in the AppState.activate() callback\n")
    try
      let builder: GtkBuilder = GtkBuilder.new_from_string(UI())?
      build_ui(builder)?
      label = GtkLabel.new_from_builder(builder, "label")?
      hookup_signals(builder)?
    else
      Debug.err("I failed to parse my GtkBuilder XML")
    end
```

Before we do anything else, we should define some callbacks.  As these callbacks
are coming from C, we have to use bare functions.

The callback we link to the "increment" button will add one to `counter_value`,
and the callback we link to the "decrement" button will subtract.

```pony
  fun @bare_increment_clicked(button: GObjectStruct, app: AppState): None =>
    app.counter_value = app.counter_value + 1
//    app.refresh_display()

  fun @bare_decrement_clicked(button: GObjectStruct, app: AppState): None =>
    app.counter_value = app.counter_value - 1
//    app.refresh_display()
```

Here's how we hook them up:

```pony
  fun ref hookup_signals(builder: GtkBuilder)? =>
    let button_increment: GtkButton = GtkButton.new_from_builder(builder, "button_increment")?
    let button_decrement: GtkButton = GtkButton.new_from_builder(builder, "button_decrement")?

    button_increment.signal_connect_data[AppState]("clicked", this~bare_increment_clicked(), this)
    button_decrement.signal_connect_data[AppState]("clicked", this~bare_decrement_clicked(), this)
```

First we get references to our two GtkButtons.  The `new_from_builder() function
creates a pony object to wrap the GObject and manage its memory for us.

Then we call the `signal_connect_data[AppState]` function with three arguments
with the button it's called on:

- The name of the signal "clicked"
- A reference to the callback (Note - this is a BARE function, so even though
it looks like it may be in the class' scope - it is not.  It has no access to
any class fields or `this`).
- Our `user_data`, which we make a reference to our AppState class.

As we provided a reference to our AppState object, we can now call functions
and access variables by calling it via the passed AppState reference.

Lastly, we just need to uncomment our `app.refresh_display()` in the two callback
functions, and add that function:

```pony
  fun ref refresh_display() =>
    match label
    | let l: GtkLabel => l.set_label("Count: " + counter_value.string())
    else
      Debug.out("I was unable to update the counter")
    end
```

We should now have our first, extremely simple Gtk4Pony application!
