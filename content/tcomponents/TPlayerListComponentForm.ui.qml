

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import "../tviews"

BaseCard {
    id: root

    ColumnLayout {
        id: playersLayout
        anchors.fill: root
        anchors.rightMargin: 16
        anchors.leftMargin: 16
        anchors.bottomMargin: 28
        anchors.topMargin: 16
        TTournamentPlayersList {
            id: tournamentPlayersList
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Button {
            id: scoreButton
            text: qsTr("Delete Selected Player")
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
    }
}
