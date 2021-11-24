# NOTICE:
#
# Application name defined in TARGET has a corresponding QML filename.
# If name defined in TARGET is changed, the following needs to be done
# to match new name:
#   - corresponding QML filename must be changed
#   - desktop icon filename must be changed
#   - desktop filename must be changed
#   - icon definition filename in desktop file must be changed
#   - translation filenames have to be changed

# The name of your application
TARGET = lab_08

CONFIG += sailfishapp

SOURCES += src/lab_08.cpp \
    src/Counter.cpp \
    src/ListStrings.cpp

DISTFILES += qml/lab_08.qml \
    qml/cover/CoverPage.qml \
    qml/pages/CounterPage.qml \
    qml/pages/Dictionary.qml \
    qml/pages/MainPage.qml \
    qml/pages/MainPage.qml \
    rpm/lab_08.changes.in \
    rpm/lab_08.changes.run.in \
    rpm/lab_08.spec \
    rpm/lab_08.yaml \
    translations/*.ts \
    lab_08.desktop

SAILFISHAPP_ICONS = 86x86 108x108 128x128 172x172

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n

# German translation is enabled as an example. If you aren't
# planning to localize your app, remember to comment out the
# following TRANSLATIONS line. And also do not forget to
# modify the localized app name in the the .desktop file.
TRANSLATIONS += translations/lab_08-de.ts

HEADERS += \
    src/Counter.h \
    src/ListStrings.h
