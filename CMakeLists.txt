if(WITH_QT6)
	find_package(Qt6 COMPONENTS Core REQUIRED)
else()
	find_package(Qt5 COMPONENTS Core REQUIRED)
endif()

set(CMAKE_AUTOMOC TRUE)

set(qevdevkeyboard_PUBLIC_HEADERS
	src/qevdevkeyboardhandler.h
	src/qevdevkeyboardmanager.h
	src/qtinputsupport_devicehandlerlist.h
	)

add_library(qevdevkeyboard SHARED
	src/qdevicediscovery_udev.cpp
	src/qevdevutil.cpp
	src/qevdevkeyboardhandler.cpp
	src/qevdevkeyboardmanager.cpp
	src/qdevicediscovery.h
	src/qdevicediscovery_udev.h
	src/qevdevkeyboard_defaultmap.h
	${qevdevkeyboard_PUBLIC_HEADERS}
	)

if(WITH_QT6)
	target_link_libraries(qevdevkeyboard Qt6::Core Qt6::CorePrivate)
else()
	target_link_libraries(qevdevkeyboard Qt5::Core Qt5::CorePrivate)
endif()

target_link_libraries(qevdevkeyboard -ludev)
target_include_directories(qevdevkeyboard PUBLIC src)

set_target_properties(qevdevkeyboard PROPERTIES LINK_FLAGS "-Wl,-no-undefined")

install(TARGETS qevdevkeyboard LIBRARY)
install(FILES ${qevdevkeyboard_PUBLIC_HEADERS} DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/qevdevkeyboard)
