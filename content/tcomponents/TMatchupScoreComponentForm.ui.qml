

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

BaseCard {
    id: root
    ColumnLayout {
        id: scoreLayout
        anchors.fill: root
        anchors.rightMargin: 16
        anchors.leftMargin: 16
        anchors.bottomMargin: 28
        anchors.topMargin: 16

        TTeamScoreField {
            id: teamOneField
            teamScoreFieldPlaceHolderText: qsTr("Enter Score")
            Layout.preferredHeight: 8
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Label {
            id: vsLabel
            color: "#808080"
            text: qsTr("-VS-")
            font.pixelSize: 32
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            Layout.preferredHeight: 2
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        TTeamScoreField {
            id: teamTwoField
            teamName: qsTr("Team 2")
            teamScoreFieldPlaceHolderText: qsTr("Enter Score")
            Layout.preferredHeight: 8
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Button {
            id: scoreButton
            text: qsTr("Score")
            font.pixelSize: 32
            Layout.preferredHeight: 4
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
    }
}
