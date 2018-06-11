import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import "../scripts/Icon.js" as MDiFonts
Item {
    Item {
        id: topLvl
        height: 10
        anchors{top: parent.top; left: parent.left; right: parent.right}

        Text {
            id: title
            anchors{top: parent.top; left: parent.left; margins: 10}
            text: qsTr("Stories")
            font.family: 'Arial'
            font.pixelSize: 10
            font.bold: true
            color: 'Black'
        }

        Text {
            id: lbl
            text: qsTr("Play All")
            font.family: 'Arial'
            color: 'Black'
            font.pixelSize: 10
            anchors{top: parent.top; right: parent.right; margins: 10}
        }

        IcoTool {
            text: MDiFonts.Icon.play
            font.pixelSize: 16
            color: 'Black'
            anchors{verticalCenter: lbl.verticalCenter; right: lbl.left; rightMargin: 5}
        }
    }


    // List Model - Stories
    ListModel {
        id: modelStories
        ListElement {avi: 'thumbs/Me.jpg'}
        ListElement {avi: 'thumbs/bleach41.jpg'}
        ListElement {avi: 'thumbs/Bleach38.jpg'}
        ListElement {avi: 'thumbs/coolKid.jpg'}
        ListElement {avi: 'thumbs/girlNails.jpg'}
        ListElement {avi: 'thumbs/gorgeous.jpg'}
        ListElement {avi: 'thumbs/gorgeous2.jpg'}
        ListElement {avi: 'thumbs/model.jpg'}
        ListElement {avi: 'thumbs/shoe.jpg'}
        ListElement {avi: 'thumbs/usher.jpg'}
    }
    // List View - Stories
    ListView {
        id: storiesView
        model: modelStories
        spacing: 5
        orientation: Qt.Horizontal
        layoutDirection: Qt.LeftToRight
        anchors {top:topLvl.bottom; topMargin: 18; bottom: parent.bottom; right: parent.right; rightMargin: 10; left: parent.left; leftMargin: 10}

        delegate: Avi {
            sourceFile: model.avi
            height: 55; width: 55
        }
    }
}
