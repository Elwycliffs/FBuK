import QtQuick 2.9
import QtQuick.Controls 2.2
import QtGraphicalEffects 1.0

Item {
    id: shade
    clip: true

    property string sourceFile: ''

    // avatar
    Image {
        id: avatar
        source: sourceFile
        anchors.fill: parent
        anchors.margins: 3
        asynchronous: true
        smooth: true
        fillMode: Image.PreserveAspectFit

        property bool rounded: true
        property bool adapt: true

        layer.enabled: rounded
        layer.effect: OpacityMask
            {
                maskSource: Item
                    {
                        width: avatar.width
                        height: avatar.height

                        Rectangle {
                            anchors.centerIn: parent
                            width: avatar.adapt ? avatar.width : Math.min(avatar.width, avatar.height)
                            height: avatar.adapt ? avatar.width : width
                            radius: Math.min(width, height)
                        }
            }
        }
    }
}
