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
TARGET = lab_05

CONFIG += sailfishapp

SOURCES += src/lab_05.cpp

DISTFILES += qml/lab_05.qml \
    qml/cover/CoverPage.qml \
    qml/pages/Attach.qml \
    qml/pages/AttachSecond.qml \
    qml/pages/DialogPage.qml \
    qml/pages/ListMenu.qml \
    qml/pages/ListView.qml \
    qml/pages/MainPage.qml \
    qml/pages/PullMenu.qml \
    qml/pages/Slideshow.qml \
    qml/pages/StackPage.qml \
    qml/pages/WebView.qml \
    rpm/lab_05.changes.in \
    rpm/lab_05.changes.run.in \
    rpm/lab_05.spec \
    rpm/lab_05.yaml \
    translations/*.ts \
    lab_05.desktop

SAILFISHAPP_ICONS = 86x86 108x108 128x128 172x172

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n

# German translation is enabled as an example. If you aren't
# planning to localize your app, remember to comment out the
# following TRANSLATIONS line. And also do not forget to
# modify the localized app name in the the .desktop file.
TRANSLATIONS += translations/lab_05-de.ts
