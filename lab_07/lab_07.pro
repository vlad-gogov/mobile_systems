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
TARGET = lab_07

CONFIG += sailfishapp

SOURCES += src/lab_07.cpp

DISTFILES += qml/lab_07.qml \
    qml/cover/CoverPage.qml \
    qml/pages/ButtonQMLComponent.qml \
    qml/pages/CustomButton.qml \
    qml/pages/Hours.qml \
    qml/pages/Light.qml \
    qml/pages/MainPage.qml \
    qml/pages/Minutes.qml \
    qml/pages/PageStackSignal.qml \
    qml/pages/Seconds.qml \
    qml/pages/StopWatch.qml \
    qml/pages/TextAnimation.qml \
    qml/pages/TrafficLights.qml \
    qml/pages/TrafficLightsQMLComponents.qml \
    rpm/lab_07.changes.in \
    rpm/lab_07.changes.run.in \
    rpm/lab_07.spec \
    rpm/lab_07.yaml \
    translations/*.ts \
    lab_07.desktop

SAILFISHAPP_ICONS = 86x86 108x108 128x128 172x172

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n

# German translation is enabled as an example. If you aren't
# planning to localize your app, remember to comment out the
# following TRANSLATIONS line. And also do not forget to
# modify the localized app name in the the .desktop file.
TRANSLATIONS += translations/lab_07-de.ts
