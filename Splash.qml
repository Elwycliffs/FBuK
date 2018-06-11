import QtQuick 2.0
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.2
import QtQuick.Layouts 1.3
import "components"

Rectangle {
    id: splashscreen
    color: '#607D8B'
    clip: true

    // Facebook Logo
    Image {
        id: logo
        source: 'icons/facebook.png'
        width: 50; height: 50
        fillMode: Image.PreserveAspectFit
        y: parent.height*0.5 - height
        anchors.horizontalCenter: parent.horizontalCenter
    }

    // Loader
    Worker {
        anchors {top: logo.bottom; topMargin: 15; horizontalCenter: parent.horizontalCenter}
    }
}
