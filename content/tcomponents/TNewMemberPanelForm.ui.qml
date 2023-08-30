

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
import "../tcontrols"

GroupBox {
    id: root
    title: qsTr("Add New Member")

    label: Label {
        x: root.leftPadding
        width: root.availableWidth
        color: "#808080"
        font.pixelSize: 32
        fontSizeMode: Text.Fit
        text: root.title
        elide: Text.ElideRight
    }

    ColumnLayout {
        id: contentLayout
        anchors.fill: parent

        TInputField {
            id: firstNameField
            labelText: qsTr("First Name")
            fieldPlaceHolderText: qsTr("First Name")
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        TInputField {
            id: lastNameField
            labelText: qsTr("Last Name")
            fieldPlaceHolderText: qsTr("Last Name")
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        TInputField {
            id: emailField
            labelText: qsTr("Email")
            fieldPlaceHolderText: qsTr("Email")
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        TInputField {
            id: cellphoneField
            labelText: qsTr("Cellphone")
            fieldPlaceHolderText: qsTr("Cell number")
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Button {
            id: buttonCreateMember
            text: qsTr("Create Member")
            font.pixelSize: 32
            Layout.margins: 16
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
    }
}
