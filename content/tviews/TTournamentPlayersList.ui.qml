

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick
import QtQuick.Controls
import "../tcomponents"

ListView {
    id: view
    width: 420
    height: 420
    clip: true

    highlightMoveDuration: 0
    header: TListHeader {
        headerText: qsTr("Teams / Players")
        z: 2
    }
    headerPositioning: ListView.OverlayHeader

    children: [
        Rectangle {
            color: "#1d1d1d"
            anchors.fill: parent
            z: -1
        }
    ]

    model: TTournamentPlayersListModel {}

    highlight: Rectangle {
        width: view.width
        height: 120
        color: "#343434"
        radius: 4
        border.color: "#0d52a4"
        border.width: 8
    }

    delegate: TTournamentPlayersListDelegate {
        z: 0
    }
}
