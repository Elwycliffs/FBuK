import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.2
import QtQuick.Layouts 1.3
import "../scripts/Icon.js" as MDiFonts

ColumnLayout {
    spacing: 0

    ToolBar {
        Material.primary: "#607D8B"
        Layout.fillWidth: true
        height: 25
        // TopLevel Controls/Tools
        RowLayout {
            anchors.fill: parent
            layoutDirection: Qt.LeftToRight
            spacing: 0

            // Camera Tool
            Item {
                Layout.alignment: Qt.AlignCenter
                Layout.fillWidth: true
                Layout.preferredHeight: 28

                IcoTool {
                    id: camCorder
                    text: MDiFonts.Icon.camera
                    font.pixelSize: 28
                    anchors.centerIn: parent

                    MouseArea {anchors.fill: parent; onClicked: forceActiveFocus(); onPressed: camCorder.color = 'lightgray'; onReleased: camCorder.color = 'white'}
                }
            }

            // Search Tool
            Item {
                Layout.alignment: Qt.AlignCenter
                Layout.preferredHeight: parent.height*0.825; Layout.preferredWidth: parent.width*0.725

                SearchTool {
                    id: searchTool
                    anchors.fill: parent
                }
            }

            // Messanger Tool
            Item {
                Layout.alignment: Qt.AlignCenter
                Layout.fillWidth: true
                Layout.preferredHeight: 28

                IcoTool {
                    id: messanger
                    text: MDiFonts.Icon.facebookMessenger
                    font.pixelSize: 28
                    anchors.centerIn: parent

                    MouseArea {anchors.fill: parent; onClicked: forceActiveFocus(); onPressed: messanger.color = 'lightgray'; onReleased: messanger.color = 'white'}
                }
            }
        }
    }

    ToolBar {
        Material.primary: 'White'
        Layout.fillWidth: true
        height: 25

        RowLayout {
            anchors.fill: parent
            layoutDirection: Qt.LeftToRight
            spacing: 0

            // Facebook Homepage Page Identifier
            Item {
                Layout.alignment: Qt.AlignCenter
                Layout.fillWidth: true
                Layout.preferredHeight: 25

                IcoTool {
                    id: home
                    text: MDiFonts.Icon.accountCardDetails
                    font.pixelSize: 26
                    color: 'lightgray'
                    anchors.centerIn: parent

                    MouseArea {anchors.fill: parent; onClicked: forceActiveFocus(); onPressed: home.color = '#607D8B'; onReleased: home.color = 'lightgray'}
                }
            }

            // Facebook Friends
            Item {
                Layout.alignment: Qt.AlignCenter
                Layout.fillWidth: true
                Layout.preferredHeight: 25

                IcoTool {
                    id: friends
                    text: MDiFonts.Icon.accountMultiple
                    font.pixelSize: 26
                    color: 'lightgray'
                    anchors.centerIn: parent

                    MouseArea {anchors.fill: parent; onClicked: forceActiveFocus(); onPressed: friends.color = '#607D8B'; onReleased: friends.color = 'lightgray'}
                }
            }

            // Notifications
            Item {
                Layout.alignment: Qt.AlignCenter
                Layout.fillWidth: true
                Layout.preferredHeight: 25

                IcoTool {
                    id: notifications
                    text: MDiFonts.Icon.bellOutline
                    font.pixelSize: 26
                    color: 'lightgray'
                    anchors.centerIn: parent

                    MouseArea {anchors.fill: parent; onClicked: forceActiveFocus(); onPressed: notifications.color = '#607D8B'; onReleased: notifications.color = 'lightgray'}
                }
            }

            // Menu
            Item {
                Layout.alignment: Qt.AlignCenter
                Layout.fillWidth: true
                Layout.preferredHeight: 25

                IcoTool {
                    id: menu
                    text: MDiFonts.Icon.menu
                    font.pixelSize: 26
                    color: 'lightgray'
                    anchors.centerIn: parent

                    MouseArea {anchors.fill: parent; onClicked: forceActiveFocus(); onPressed: menu.color = '#607D8B'; onReleased: menu.color = 'lightgray'}
                }

            }
        }
    }
}
