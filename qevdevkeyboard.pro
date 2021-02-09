TEMPLATE = lib
  
QT += core-private
QT -= gui

CONFIG += ltcg

TARGET = qevdevkeyboard

QMAKE_LFLAGS += $$QMAKE_LFLAGS_NOUNDEF
DEFINES += QT_NO_CAST_FROM_ASCII

HEADERS += \
	src/qdevicediscovery.h \
	src/qdevicediscovery_udev.h \
	src/qevdevkeyboard_defaultmap.h \
	src/qevdevkeyboardhandler.h \
	src/qevdevkeyboardmanager.h

SOURCES += \
	src/qdevicediscovery_udev.cpp \
	src/qevdevutil.cpp \
	src/qevdevkeyboardhandler.cpp \
	src/qevdevkeyboardmanager.cpp

LIBS += -ludev

target.path = $$[QT_INSTALL_LIBS]
INSTALLS += target

headers.files = src/qevdevkeyboardhandler.h src/qevdevkeyboardmanager.h src/qtinputsupport_devicehandlerlist.h
headers.path = $$[QT_INSTALL_HEADERS]
INSTALLS += headers

features.files = features/*prf
features.path = $$[QT_HOST_DATA]/mkspecs/features
INSTALLS += features

