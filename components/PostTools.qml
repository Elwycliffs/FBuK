import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import "../scripts/Icon.js" as MDiFonts
Item {
    RowLayout {
        anchors.fill: parent
        layoutDirection: Qt.LeftToRight
        spacing: 30

        // Like
        Item {
            id: likeTool
            Layout.alignment: Qt.AlignCenter
            Layout.fillWidth: true
            Layout.preferredHeight: 25

            Item {
                clip: true; height: parent.height; width: likeIcon.width+likeLbl.paintedWidth+2; anchors.centerIn: parent

                IcoTool {
                    id: likeIcon
                    text: MDiFonts.Icon.thumbUpOutline
                    font.pixelSize: 22
                    color: 'gray'
                    anchors {verticalCenter: parent.verticalCenter; left: parent.left}
                }

                Text {
                    id: likeLbl
                    anchors {left: likeIcon.right; leftMargin: 2; verticalCenter: likeIcon.verticalCenter}
                    text: qsTr("Like")
                    color: 'gray'
                    font.pixelSize: 12; font.family: 'Arial'
                }
            }
        }

        // Comment
        Item {
            id: commentTool
            Layout.alignment: Qt.AlignCenter
            Layout.fillWidth: true
            Layout.preferredHeight: 25

            Item {
                clip: true; height: parent.height; width: commentIcon.width+commentLbl.paintedWidth+2; anchors.centerIn: parent

                IcoTool {
                    id: commentIcon
                    text: MDiFonts.Icon.commentOutline
                    font.pixelSize: 22
                    color: 'gray'
                    anchors {verticalCenter: parent.verticalCenter; left: parent.left}
                }

                Text {
                    id: commentLbl
                    anchors {left: commentIcon.right; leftMargin: 2; verticalCenter: commentIcon.verticalCenter}
                    text: qsTr("Comment")
                    color: 'gray'
                    font.pixelSize: 12; font.family: 'Arial'
                }
            }
        }

        // Share
        Item {
            id: shareTool
            Layout.alignment: Qt.AlignCenter
            Layout.fillWidth: true
            Layout.preferredHeight: 25

            Item {
                clip: true; height: parent.height; width: shareIcon.width+shareLbl.paintedWidth+2; anchors.centerIn: parent
                IcoTool {
                    id: shareIcon
                    text: MDiFonts.Icon.shareOutline
                    font.pixelSize: 22
                    color: 'gray'
                    anchors {verticalCenter: parent.verticalCenter; left: parent.left}
                }

                Text {
                    id: shareLbl
                    anchors {left: shareIcon.right; leftMargin: 2; verticalCenter: shareIcon.verticalCenter}
                    text: qsTr("Share")
                    color: 'gray'
                    font.pixelSize: 12; font.family: 'Arial'
                }
            }
        }
    }
}
