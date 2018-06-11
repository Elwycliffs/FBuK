import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.2
import "../components"
import "../scripts/Icon.js" as MDiFonts

Page {
    clip: true

    Flickable {
        id: flickable
        clip: true
        anchors.fill: parent
        contentHeight: layout.height

        Column {
            id: layout
            anchors.fill: parent
            height: statusUpdate.height + stories.height
            spacing: 5

            // Status Update Toolbar
            ToolBar {
                id: statusUpdate
                Material.primary: 'White'
                anchors {left: parent.left; right: parent.right}
                height: 50

                RowLayout {
                    anchors.fill: parent
                    layoutDirection: Qt.LeftToRight
                    spacing: 0

                    // Avi
                    Item {
                        id: avatar
                        Layout.alignment: Qt.AlignCenter
                        Layout.fillWidth: true
                        Layout.preferredHeight: 45

                        Avi {
                            sourceFile: '../components/thumbs/Me.jpg'
                            anchors.centerIn: parent
                            height: 45; width: 45
                        }
                    }

                    // StatusUpdate Button
                    Item {
                        id: likeTool
                        Layout.alignment: Qt.AlignCenter
                        Layout.preferredHeight: 30; Layout.preferredWidth: parent.width*0.625

                        Rectangle {
                            anchors.fill: parent
                            border.color: 'lightgray'
                            color: "White"
                            radius: 45

                            MouseArea {
                                anchors.fill: parent
                                onClicked: {
                                    console.log("What's on your Mind?")
                                }

                                Text {
                                    id: tip
                                    text: qsTr("What's on your Mind?")
                                    font.family: 'Arial'
                                    font.pixelSize: 14
                                    color: 'lightgray'
                                    anchors.centerIn: parent
                                }
                            }
                        }
                    }

                    // Pictures
                    Item {
                        id: photos
                        Layout.alignment: Qt.AlignCenter
                        Layout.fillWidth: true
                        Layout.preferredHeight: 45

                        IcoTool {
                            id: ico
                            font.pixelSize: 18
                            color: 'lightgray'
                            text: MDiFonts.Icon.imageMultiple
                            anchors {top: parent.top; topMargin: 3; horizontalCenter: parent.horizontalCenter}
                        }
                        Text {
                            id: txt
                            anchors {top: ico.bottom; topMargin: 3; horizontalCenter: parent.horizontalCenter}
                            text: 'Photos'
                            font.pixelSize: 10
                            font.family: 'Arial'
                            color: 'lightgray'
                        }
                    }
                }
            }

            // Stories ToolBar
            ToolBar {
                id: stories
                Material.primary: 'White'
                anchors {left: parent.left; right: parent.right}
                height: 90

                Stories {anchors.fill: parent}
            }

            Page {
                id: body
                clip: true
                anchors {left: parent.left; right: parent.right}
                Material.background: 'lightgray'
                height: posts.height

                // Public Posts
                Posts {
                    id: posts
                    anchors {left: parent.left; right: parent.right}
                    onHeightChanged: {flickable.contentHeight += height}
                }
            }
        }
    }
}
