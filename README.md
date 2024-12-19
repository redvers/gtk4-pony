# gtk4-pony

                                                                              #
This is a language binding for the Gtk toolkit for ponylang.  This README.md
will provide some guidence on how to get started!

## Installation Dependencies

### Essentials

- The ponylang compiler.
- GLib-2 (includes GObject / Gio) runtime libraries and development files.
- Gtk-4 (runtime libraries and development files.
- glib2-pony (https://github.com/redvers/glib2-pony)

### Nice to have

- UI Builder such as Cambalache (flatpak: ar.xjuan.Cambalache)


## Philosophy

There are a number of areas where there is an impedence mismatch between the
Gtk Libraries and ponylang.  In this section we'll briefly cover some of them
and the design decisions we had to make.

### GtkApplication

#### The issue

Event driven applications are structured in such a way that you set up your
application, link events (button clicked, text entered etc...) to callbacks,
then pass all control to Gtk.  In C, this is done with a call to
`g_application_run()`.

This approach is incompatible with the pony runtime as it would lock up
a scheduler and fail to execute any Garbage Collection.  This is
"suboptimal".

#### Pony implementation

We have had to implement a fair amount of the GtkApplication functionality
in pure pony.  Specifically, the constructor and the .run() functionality.

The GtkApplication is now a Pony actor which controls and runs the mainloop.


### Type, Reference Counting, and Garbage Collection

Gtk uses GObject, which is a C-based implementation of OO with its own
per-object reference counting, garbage collection, inheritance, interfaces,
and so on.

#### The Issue

In C, application developers use a *lot* of macros to write boiler-plate
code, cast structs between types, access private fields, and do other
completely normal in C (but nefarious in pony) type things.

#### Pony Implementation

We need to make sure that when we interact with these objects, we
know who is responsible for freeing them, GLib/GObject, or us.  We have
to ensure that when something falls out of pony-scope, then us garbage
collecting on the pony side won't free something out from the C side.

... and vice-versa.

We have endeavored to deal with these issues via the pony classes we
have generated.  Bugs may live here, please report them as you find them.

As for the struct casting, there we have flattened the C-side and stored
all GObject derived Objects as GObjectStructs, and are enforcing types
at the pony class and interface level.

For example, For GtkApplicationWindow

        GObject
                -> GtkWidget
                            -> GtkWindow
                                        -> GtkApplicationWindow
                            -> GtkLabel

        In pony code:
            GtkApplicationWindowInterface is GtkWindowInterface
            GtkWindowInterface is GtkWidgetInterface
            GtkWidgetInterface is GObjectInterface

So:

A method that links a GtkApplication to a GtkWindow would live in
GtkApplicationWindowInterface.

A method that minimizes a Window, would live in GtkWindowInterface and would be
accessable to both GtkWindow and GtkApplicationWindow.

A method that hides an Widget, would live in GtkWidgetInterface, and would
be accessable to GtkWidget, GtkWindow, GtkApplicationWindow, and GtkLabel

... and so on.


Function calls which would take any class below Window, would take a
GtkWindowInterface as an argument.


### Compiler limitations

ponyc can spend a LONG time in the expr compile-phase if your code tries
to implement a lot of types in a closed-world heirarchy.

#### Pony Implementation

If you utilize the UI tools to build your interfaces, it can not only
reduce the amount of code you have to write, but also the amount of
the pony code that you have to "use", and consequently the amount of
time ponyc has to evaluate all the types.

Try to reduce the amount of pony-included objects as much as you can.


## Enough Yapping!

Okay - go to the [tutorial](tutorial/README.md)!






