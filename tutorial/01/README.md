# Brief Tutorial

## Goals for the first example:

- Understand the structure of a GtkApplication.
- Understand how Gtk4Pony applications function.
- Given a simple XML definition, generate a working application.

The first example program we're going to write is perhaps the simplest
example we can build.  A window two buttons and a counter.


## Our Example XML file

I'm only going to provide this XML file as an example since it's very
verbose.  The syntax / properties are all documented on gtk.org.

```xml
<?xml version='1.0' encoding='UTF-8'?>
<interface>
  <requires lib="gtk" version="4.12"/>
  <object class="GtkApplicationWindow" id="window">
    <child>
      <object class="GtkBox">
        <child>
          <object class="GtkButton" id="button_increment">
            <property name="label">increment</property>
          </object>
        </child>
        <child>
          <object class="GtkButton" id="button_decrement">
            <property name="label">decrement</property>
          </object>
        </child>
        <child>
          <object class="GtkLabel" id="label">
            <property name="label">Count: X</property>
          </object>
        </child>
      </object>
    </child>
  </object>
</interface>
```

Our top widget is the Window (GtkApplicationWindow).

It has one child, a GtkBox which aligns all its children horizontally.

The first two children are GtkButtons, the third is a GtkLabel.

## main.pony

As Gtk uses thread local storage we have to pin all of our calls to a
single OS thread.  To achieve this, we have to use the `actor_pinning`
package and provide Gtk4Pony with the `PinUnpinActorAuth` capability.

```pony
use "actor_pinning"
use "Gtk/Application"

actor Main
  let env: Env
  let pinauth: PinUnpinActorAuth

  new create(env': Env) =>
    env = env'
    pinauth = PinUnpinActorAuth(env.root)
```

Our application is going to store State and application logic, we we're going
to create a class to handle all of this.  We only need to inititially provide
the name of the application in reverse-domain format.

Here's the remainder of `main.pony`:


```pony
    let appstate: AppState iso = recover iso AppState("me.infect.builder") end

    let gtkapplication: GtkApplication = GtkApplication(pinauth, consume appstate)
    gtkapplication.run()
```

Now let's implement it in app\_state.pony:

```pony
use "debug"
use "actor_pinning"
use "Gtk"
use "Gtk/Application"

class AppState is GtkPony
  var name: String val
  var gtkapplication: (GtkApplication tag | None) = None
  var counter_value: USize = 0 

  new create(name': String val) =>
    name = name'

  fun ref set_application(gtkapplication': GtkApplication tag) =>
    gtkapplication = gtkapplication'

  fun get_name(): String val => name

  fun activate(): None =>
    Debug.out("I'm in the AppState.activate() callback")
```

Executing this gives us:
```
red@panic:~/projects/gtk4-pony$ ./build/release/builder 
I'm in the AppState.activate() callback
```

## GtkApplication flow

### GtkApplication.create()

When you create the `GtkApplication` actor, the actor is spawned on a random
scheduler, not the pinnable one. `GtkApplication.create()` requests to be
pinned and sends a copy of its own tag (it's an actor) to your
`AppState.set\_application()` callback for storage for use later.

### GtkApplication.run()

On first execution, `GtkApplication.run()` ensures that it is pinned. If it
is not, it calls itself again until it is.

When it is, it calls `Gtk.init()`, creates a C GtkApplication instance
and registers an "activate()" callback which will be called by Gtk
once the object has finished being instantiated, registered, and activated.

In our example, our `AppState.activate()` function simply prints a debug
message and exists.

On the [next page](README_02.md), we shall create our actual UI.

