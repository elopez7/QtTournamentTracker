

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

RowLayout {
    id: root

    property alias labelText: inputFieldLabel.text
    property alias fieldPlaceHolderText: textField.placeholderText
    property alias fieldText: textField.text
    property alias textFieldValidator: textField.validator

    Label {
        id: inputFieldLabel
        color: "#808080"
        font.pixelSize: 32
        fontSizeMode: Text.Fit
        verticalAlignment: Text.AlignVCenter
        Layout.preferredWidth: 2
        Layout.fillHeight: true
        Layout.fillWidth: true
        text: qsTr("<-NONE->")
    }

    TextField {
        id: textField
        Layout.preferredWidth: 2
        Layout.fillHeight: true
        Layout.fillWidth: true
        placeholderText: qsTr("Text Field")
    }
}
