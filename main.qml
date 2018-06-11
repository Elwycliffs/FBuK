import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Window 2.2

ApplicationWindow {
    id: app
    visible: true
    height: 420; width: 320

    // Well call this a Parody to the re-known Facebook App --> No pun intended though
    // A mere FBook Design Skeleton fed by dummy data
    Loader {
        id: loader
        anchors.fill: parent
        active: true
        source: 'Splash.qml'

        signal ready

        onReady: {
            source = 'Home.qml'
        }

        NumberAnimation {
            id: animation
            running: false
            target: loader.item
            property: 'width'
            from: app.width
            to: -5
            duration: 1200
            easing.type: Easing.InExpo

            onRunningChanged: {
                if(running === false){
                    loader.ready()
                }
            }
        }
    }

    Timer {
        id: sessLoader
        running: true
        interval: 5000
        repeat: false
        onTriggered: {
            animation.running = true
        }
    }
}
