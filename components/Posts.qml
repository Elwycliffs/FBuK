import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.2
import QtQuick.Layouts 1.3
import "../scripts/Icon.js" as MDiFonts

Item {
    id: root
    //clip: true

    Component {
        id: postsDelegate
        Item {
            id: root
            height: topLvl.height+content.height+footer.height+26
            width: ListView.view.width

            Rectangle{id:shade;anchors.fill:parent;color:'white'}

            Item {
                id: topLvl
                height: 30
                anchors {top: parent.top; left: parent.left; right: parent.right; margins: 8}

                property string userName: user
                property string avatarSrc: avaTar
                property string stamp: timestamp
                property string pType: ptype
                property string pShared: shared

                Avi {
                    id: avatar
                    sourceFile: parent.avatarSrc
                    anchors {left: parent.left; top: parent.top}
                    height: 30; width: 30
                }

                IcoTool {
                    text: MDiFonts.Icon.dotsHorizontal
                    font.pixelSize: 22
                    color: 'Black'
                    anchors {right: parent.right; top: parent.top}
                }

                Text {
                    id: title
                    font.family: 'Arial'; font.pixelSize: 10
                    color: 'Black'
                    text: shared === true ? '<b>'+parent.userName+'</b> '+ 'shared a post': '<b>'+parent.userName+'</b>'
                    anchors {left: avatar.right; leftMargin: 3; top: parent.top}
                }

                Text {
                    id: timeStamp
                    color: 'gray'
                    font.family: 'Arial'; font.pixelSize: 9
                    text: parent.stamp
                    anchors {top: title.bottom; topMargin: 2; left: avatar.right; leftMargin: 5}
                }

                IcoTool {
                    text: parent.pType === 'Public' ? MDiFonts.Icon.earth : MDiFonts.Icon.accountMultiple
                    font.pixelSize: 10
                    color: 'Black'
                    anchors {left: timeStamp.right; leftMargin: 4; verticalCenter: timeStamp.verticalCenter; topMargin: 2}
                }
            }

            Item {
                id: content
                clip: true
                anchors {top: topLvl.bottom; topMargin: 10; left: parent.left; right: parent.right}
                height: graphiz.height + pstContent.paintedHeight + 5

                property string xGraphics: graphics
                property string xPost: post

                Image {
                    id: graphiz
                    anchors {top: parent.top; left: parent.left; right: parent.right}
                    height: parent.xGraphics.length !== 0 ? 180 : 0
                    source: parent.xGraphics
                    asynchronous: true
                    fillMode: Image.PreserveAspectFit
                }

                Text {
                    id: pstContent
                    //height: 80
                    anchors {left: parent.left; right: parent.right; top: graphiz.bottom; topMargin: 5; leftMargin: 8; rightMargin: 8}
                    font {family: 'Arial'; pixelSize: 12}
                    text: parent.xPost
                    elide: Text.ElideRight
                    wrapMode: Text.Wrap
                    color: 'black'

                    onLinkActivated: {Qt.openUrlExternally(link)}
                }
            }

            Item {
                id: footer
                height: 30
                anchors {top: content.bottom; topMargin: 5; left: parent.left; right: parent.right; margins: 8}
                PostTools {anchors.fill: parent}
            }
        }

    }

    ListModel {
        id: posts

        ListElement{
            user:'Wycliff Kibocha'
            avaTar:'thumbs/Me.jpg'
            timestamp: '20 Minutes ago'
            post: 'Just completed this Facebook Design Skeleton Project #codeName:FBuk <html><style type="text/css"></style> <br /><br />Follow the <a href="https://github.com/Elwycliffs/FBuK">Project on Github</a></html>'
            ptype: 'Public'
            shared: false
            graphics: 'thumbs/Project.png'

        }

        ListElement{
            user:'Wycliff Kibocha'
            avaTar:'thumbs/Me.jpg'
            timestamp: '7 Hours ago'
            post: 'Qt is a cross-platform application framework and widget toolkit for creating classic and embedded graphical user interfaces, and applications that run on various software and hardware platforms with little or no change in the underlying codebase, while still being a native application with native capabilities and speed.<html><style type="text/css"></style> <br /><br /> Go to: <a href="https://www.qt.io/">Download Qt</a></html>'
            ptype: 'Public'
            shared: true
            graphics: 'thumbs/sourcecode.png'
        }

        ListElement{
            user:'The QtProject'
            avaTar:'thumbs/QtLogo.png' //einsten
            timestamp: '15 Hours ago'
            post: 'The Material style is not a native Android style. The Material style is a 100% cross-platform Qt Quick Controls 2 style implementation that follows the Google Material Design Guidelines. The style runs on any platform, and looks more or less identical everywhere. Minor differences may occur due to differences in available system fonts and font rendering engines. <html><style type="text/css"></style> <br /><br /> Check it out: <a href="http://doc.qt.io/Qt-5/qtquickcontrols2-material.html#detailed-desc-material">QML Material Design</a></html>'
            ptype: 'Public'
            shared: false
            graphics: 'thumbs/QtMaterial.png' //imagine wallpaper
        }

        ListElement{
            user:'TheReal Einstein'
            avaTar:'thumbs/Einstein.jpg' //einsten
            timestamp: '22 Hours ago'
            post: '<html><style type="text/css"></style><center><i>"Imagination is more important than knowledge. Knowledge is limited. Imagination encircles the world."</i></center> <br /><br />Goalcast: Best of <a href="https://www.goalcast.com/2017/03/29/top-30-most-inspiring-albert-einstein-quotes/">Albert Einstein</a></html>'
            ptype: 'Public'
            shared: false
            graphics: 'thumbs/imagine.jpg' //imagine wallpaper
        }

        ListElement{
            user:'Wycliff Kibocha'
            avaTar:'thumbs/Me.jpg' //QtLocation Api's
            timestamp: '48 Hours ago'
            post: 'The Location API provides a library for mapping, navigation and place information. The Qt Location API provides the developer with a set of functions to interact with maps, navigational data and places of interest. This is particularly useful when associated with current position information which can be retrieved via the QtPositioning module. With the Maps API we can associate a position with a map in various formats supplied by a backend. Then the Places API could be used to populate places on the Map or even specify the current position as a place of interest and associate it with an icon, contact details and other information. <html><style type="text/css"></style> <br /><br /> Visit the <a href="https://doc-snapshots.qt.io/qt5-5.9/qtlocation-index.html">Project</a></html>'
            ptype: 'Friends'
            shared: true
            graphics: 'thumbs/QtLocation.png'
        }

        ListElement{
            user: "Rag'n'Bone Man"
            avaTar: 'thumbs/RagNBonePic.jpg' //Rag'n'Bone Man
            timestamp: '2 Days ago'
            post: 'A massive thank you for going out and buying my album, streaming it and making it such a success so quickly, it means the world to me. Number 1 album... <b>Smash!</b> <html><style type="text/css"></style> <br /><br />Check it out on: <a href="https://www.youtube.com/watch?v=L3wKzyIN1yk&list=PLZnU7NziykhZJhQbC-h_LCIliVMTEy8Iq">YouTube</a></html>'
            ptype: 'Public'
            shared: false
            graphics: 'thumbs/RagNBone.jpg'
        }

        ListElement{
            user:'Wycliff Kibocha'
            avaTar:'thumbs/Me.jpg'
            timestamp: '12 Hours ago'
            post: 'Call Facebook. I cracked Something. Hold up.. Just some <b> **Easter Egg.. </b> \n@codeFrenzy #codeFlu'
            ptype: 'Public'
            shared: false
            graphics: ''
        }
    }

    ListView {
        id: postsView
        model: posts
        spacing: 5
        orientation: Qt.Vertical
        layoutDirection: ListView.TopToBottom
        anchors {left: parent.left; right: parent.right}
        interactive: false
        delegate: postsDelegate

        Component.onCompleted: {
            var items = postsView.count
            var ttlHeight = 0

            for(var item = 0; item < items; item++){
                postsView.currentIndex = item
                ttlHeight += postsView.currentItem.height+5
            }
            postsView.height = ttlHeight + 10
        }

        onHeightChanged: {root.height = postsView.height}
    }
}
