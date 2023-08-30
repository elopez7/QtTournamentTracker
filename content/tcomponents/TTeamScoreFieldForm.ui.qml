

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Controls.Basic

Item {
    id: root
    property alias teamName: teamNameLabel.text
    property alias teamScoreFieldPlaceHolderText: teamScoreField.placeholderText
    property alias teamScoreFieldText: teamScoreField.text
    GridLayout {
        id: teamScoreFieldLayout
        anchors.fill: parent
        rows: 2
        columns: 2

        Label {
            id: teamNameLabel
            color: "#808080"
            text: qsTr("Team 1")
            font.pixelSize: 32
            verticalAlignment: Text.AlignVCenter
            Layout.preferredHeight: 2
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.columnSpan: 2
        }

        Label {
            id: teamScoreLabel
            color: "#808080"
            text: qsTr("Score")
            font.pixelSize: 32
            verticalAlignment: Text.AlignVCenter
            Layout.preferredHeight: 2
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        TextField {
            id: teamScoreField
            Layout.maximumHeight: teamScoreLabel.height / 2
            Layout.preferredHeight: 1
            Layout.fillHeight: true
            Layout.fillWidth: true
            placeholderText: qsTr("Text Field")
            validator: IntValidator {
                bottom: 0
            }
            font {
                pixelSize: 16
            }
        }
    }
}
