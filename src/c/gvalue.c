#include <glib-object.h>

static void
int2string (const GValue *src_value,
            GValue       *dest_value)
{
  if (g_value_get_int (src_value) == 42)
    g_value_set_static_string (dest_value, "An important number");
  else
    g_value_set_static_string (dest_value, "What's that?");
}

int
main (int   argc,
      char *argv[])
{
  // GValues must be initialized
  GValue a = G_VALUE_INIT;
  GValue b = G_VALUE_INIT;
  const char *message;

  // The GValue starts empty
  g_assert (!G_VALUE_HOLDS_STRING (&a));

  // Put a string in it
  g_value_init (&a, G_TYPE_STRING);
  g_assert (G_VALUE_HOLDS_STRING (&a));
  g_value_set_static_string (&a, "Hello, world!");
  g_printf ("%s\n", g_value_get_string (&a));

  // Reset it to its pristine state
  g_value_unset (&a);

  // It can then be reused for another type
  g_value_init (&a, G_TYPE_INT);
  g_value_set_int (&a, 42);

  // Attempt to transform it into a GValue of type STRING
  g_value_init (&b, G_TYPE_STRING);

  // An INT is transformable to a STRING
  g_assert (g_value_type_transformable (G_TYPE_INT, G_TYPE_STRING));

  g_value_transform (&a, &b);
  g_printf ("%s\n", g_value_get_string (&b));

  // Attempt to transform it again using a custom transform function
  g_value_register_transform_func (G_TYPE_INT, G_TYPE_STRING, int2string);
  g_value_transform (&a, &b);
  g_printf ("%s\n", g_value_get_string (&b));

  g_value_unset (&b);
  g_value_unset (&a);

  return 0;
}
Copy
For letting a GValue own (and memory manage) arbitrary types or pointers, they need to become a boxed type. The example below shows how the pointer mystruct of type MyStruct is used as a boxed type.

typedef struct { ... } MyStruct;
G_DEFINE_BOXED_TYPE (MyStruct, my_struct, my_struct_copy, my_struct_free)

// These two lines normally go in a public header. By GObject convention,
// the naming scheme is NAMESPACE_TYPE_NAME:
#define MY_TYPE_STRUCT (my_struct_get_type ())
GType my_struct_get_type (void);

void
foo (void)
{
  GValue *value = g_new0 (GValue, 1);
  g_value_init (value, MY_TYPE_STRUCT);
  g_value_set_boxed (value, mystruct);
  // [... your code ....]
  g_value_unset (value);
  g_free (value);
}

G_TYPE_BOOLEAN
