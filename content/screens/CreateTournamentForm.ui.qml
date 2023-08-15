

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import "../tcomponents"
import "../tviews"

Item {
    id: root
    property alias createTournamentButton: createTournamentButton
    GridLayout {
        id: createTournamenLayout
        anchors.fill: parent
        anchors.rightMargin: 16
        anchors.leftMargin: 16
        anchors.topMargin: 16
        anchors.bottomMargin: 32
        rows: 2
        columns: 2

        TTournamentComponent {
            id: tournamentDataComponent
            Layout.preferredWidth: 2
            Layout.rowSpan: 2
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        TPlayerListComponent {
            id: playersList
            Layout.preferredHeight: 2
            Layout.preferredWidth: 2
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        TPrizesListComponent {
            id: prizesList
            Layout.preferredHeight: 2
            Layout.preferredWidth: 2
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Button {
            id: createTournamentButton
            text: qsTr("Create Tournament")
            font.pixelSize: 32
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.maximumHeight: 64
            Layout.maximumWidth: 512
            Layout.preferredWidth: 2
            Layout.preferredHeight: 1
            Layout.columnSpan: 2
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
    }
}
