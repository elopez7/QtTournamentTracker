

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
    property alias backButton: backButton

    GridLayout {
        id: tournamentViewLayout
        anchors.fill: parent
        rows: 2
        columns: 2
        anchors.bottomMargin: 32
        anchors.topMargin: 32
        anchors.rightMargin: 16
        anchors.leftMargin: 16

        TViewMatchUpComponent {
            id: matchUpView
            Layout.rowSpan: 2
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        TMatchupScoreComponent {
            id: scoreView
            Layout.preferredHeight: 10
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Item {
            id: buttonBackground
            Layout.preferredHeight: 2
            Layout.fillHeight: true
            Layout.fillWidth: true
            Button {
                id: backButton
                text: qsTr("back")
                anchors.fill: parent
                anchors.margins: 16
                font.pixelSize: 32
            }
        }
    }
}
