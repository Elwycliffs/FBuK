TEMPLATE = app
TARGET = FBuk
QT += quick quickcontrols2
QT_QUICK_CONTROLS_STYLE=Material ./app

SOURCES += main.cpp

RESOURCES += main.qml \
    qtquickcontrols2.conf \
    Splash.qml \
    Home.qml \
    $$files(components/*.qml) \
    $$files(pages/*.qml) \
    $$files(scripts/*.js) \
    $$files(icons/*.png, true) \
    $$files(components/thumbs/*.*, true) \
    $$files(fonts/webfonts/fonts/*.ttf) \
    $$files(android-sources/*.xml)

ANDROID_PACKAGE_SOURCE_DIR = $$PWD/android-sources

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

