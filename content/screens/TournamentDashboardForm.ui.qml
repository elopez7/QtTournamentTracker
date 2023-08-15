

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
    property alias createTournamentButton: createTournamentButton
    property alias loadTournamentButton: loadTournamentButton

    ColumnLayout {
        id: dashboardLayout
        anchors {
            fill: parent
            topMargin: 16
            leftMargin: 16
            rightMargin: 16
            bottomMargin: 32
        }

        Label {
            id: dashboardTitle
            color: "#808080"
            text: qsTr("Tournament Dashboard")
            font.pixelSize: 48
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignBottom
            Layout.preferredHeight: 4
            fontSizeMode: Text.Fit
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Label {
            id: loadTournamentLabel
            color: "#808080"
            text: qsTr("Load Existing Tournament")
            font.pixelSize: 32
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignBottom
            Layout.preferredHeight: 4
            fontSizeMode: Text.Fit
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        ComboBox {
            id: tournamentsComboBox
            Layout.preferredHeight: 2
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Button {
            id: loadTournamentButton
            text: qsTr("Load Tournament")
            font.pixelSize: 32
            Layout.preferredHeight: 2
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Button {
            id: createTournamentButton
            text: qsTr("Create Tournament")
            font.pixelSize: 32
            Layout.preferredHeight: 2
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
    }
}
