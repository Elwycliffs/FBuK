import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.2
import "../scripts/Icon.js" as MDiFonts

Item {
    TextField {
        id: field
        anchors.fill: parent
        font.family: 'Arial'
        color: 'white'
        font.pixelSize: 13

        states: [
            State {name: 'Active'
                PropertyChanges {
                    target: ico
                    visible: false
                }
                PropertyChanges {
                    target: lbl
                    visible: false
                }
            },
            State{name: 'Inactive'
                PropertyChanges {
                    target: ico
                    visible: true
                }
                PropertyChanges {
                    target: lbl
                    visible: true
                }
            }
        ]

        signal escapee

        Keys.onEscapePressed: escapee()

        IcoTool {
            id: ico
            font.pixelSize: 17
            color: 'whitesmoke'
            text: MDiFonts.Icon.magnify
            anchors {left: parent.left; verticalCenter: parent.verticalCenter}
        }

        Text {
            id: lbl
            text: qsTr("Search")
            anchors.left: ico.right; anchors.leftMargin: 3; anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 13; font.family: 'Arial'
            color: 'lightgray'
        }

        onActiveFocusChanged: {
            if(activeFocus === true){
                state='Active'
            }
            else {
                text=''
                state='Inactive'
            }
        }
    }

    Connections {
        target: field
        onEscapee: {field.focus=false; ico.visible=true; lbl.visible=true}
    }
}
