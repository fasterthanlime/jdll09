use gtk
import gtk/[Gtk, Window] // acts like: import gtk/Gtk, gtk/Window
exit: extern func
   
main: func {
   w := Window new("Hi, world")
   w setUSize(800, 600) .connect("destroy", exit) .showAll()
   Gtk main()
}
