

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
        id: teamFormLayout
        anchors {
            fill: parent
            rightMargin: 16
            leftMargin: 16
            bottomMargin: 32
            topMargin: 16
        }

        Label {
            id: formName
            color: "#808080"
            text: qsTr("Create Team")
            font.pixelSize: 32
            fontSizeMode: Text.Fit
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Label {
            id: teamNameLabel
            color: "#808080"
            text: qsTr("Team Name")
            font.pixelSize: 32
            fontSizeMode: Text.Fit
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        TextField {
            id: textField
            placeholderText: qsTr("Text Field")
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Label {
            id: selectTeamMemberName
            color: "#808080"
            text: qsTr("Select Team Member")
            font.pixelSize: 32
            fontSizeMode: Text.Fit
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        ComboBox {
            id: comboBox
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Button {
            id: addMemberButton
            text: qsTr("Add Member")
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        TNewMemberPanel {
            id: newMemberPanel
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
    }
}
