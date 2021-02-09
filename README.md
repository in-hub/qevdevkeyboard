QEvDevKeyboard
==============

Provides a library for reading keyboard events based on libevdev and Qt.
It's basically an out-of-tree copy of various source files of Qt Base
and unlike the built-in input support, it does not require the Qt Gui
module.

Copyright (c) 2021 in.hub GmbH

Build and installation
----------------------

* Configure and build project via "qmake" and "make"
* Install library and headers via "make install"

Usage
-----

* Add `qevdevkeyboard` to the `CONFIG` variable in your Qt project
* Include "qevdevkeyboardmanager.h" in your source file(s)
* Instantiate QEvdevKeyboardManager and use the supplied methods/signals
