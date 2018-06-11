import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.2
import QtQuick.Controls.Universal 2.2
import QtQuick.Layouts 1.3
import "components"
import "pages"


Page {
    visible: true
    clip: true

    property string username: ''
    property string aviSource: ''

    Material.theme: Material.Light
    Material.background: 'lightgray'
    Material.foreground: 'White'
    Material.accent: "whitesmoke"

    header: Bars{Layout.fillWidth: true}

    SwipeView {
        id: view
        anchors.fill: parent
        currentIndex: 1

        // Home page
        Homepage {
            id: homepage
            // Status Bar
        }

        // Friends page

        // Notificiations page

        // Menu page
    }
}
