

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

Item {
    id: root
    property alias createTeamButton: createTeamButton

    GridLayout {
        id: formLayout
        rows: 2
        columns: 2
        anchors {
            fill: parent
            rightMargin: 16
            leftMargin: 16
            bottomMargin: 32
            topMargin: 16
        }

        TTeamComponent {
            id: teamsForm
            Layout.preferredHeight: 10
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        TTeamMembersComponent {
            id: teamMembers
            Layout.preferredHeight: 10
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        Button {
            id: createTeamButton
            text: qsTr("Create Team")
            font.pixelSize: 32
            Layout.preferredHeight: 1
            Layout.columnSpan: 2
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
    }
}
