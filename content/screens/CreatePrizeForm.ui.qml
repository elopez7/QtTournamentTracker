

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import "../tcontrols"
import "../tcomponents"


Item {
    id: root
    property alias createPrizeButton: createPrizeButton
    property alias placeNumber: placeNumberField.fieldText
    property alias placeName: placeNameField.fieldText
    property alias prizeAmount: prizeAmountField.fieldText
    property alias prizePercentage: prizePercentageField.fieldText

    ColumnLayout {
        id: prizeFormLayout
        anchors {
            fill: parent
            rightMargin: 16
            leftMargin: 16
            bottomMargin: 32
            topMargin: 16
        }

        Label {
            id: tournamentLabel
            color: "#808080"
            text: qsTr("Create Prize")
            font.pixelSize: 48
            fontSizeMode: Text.Fit
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        TInputField {
            id: placeNumberField
            labelText: qsTr("Place Number")
            fieldPlaceHolderText: qsTr("Place Number")
            Layout.fillHeight: true
            Layout.fillWidth: true
            textFieldValidator: IntValidator {
                bottom: 0
            }
        }
        TInputField {
            id: placeNameField
            labelText: qsTr("Place Name")
            fieldPlaceHolderText: qsTr("Place Name")
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        TInputField {
            id: prizeAmountField
            labelText: qsTr("Prize Amount")
            fieldPlaceHolderText: qsTr("Prize Amount")
            Layout.fillHeight: true
            Layout.fillWidth: true
            textFieldValidator: DoubleValidator {
                bottom: 0
                decimals: 2
                notation: DoubleValidator.StandardNotation
            }
        }

        Label {
            id: orLabel
            color: "#808080"
            text: qsTr("-OR-")
            font.pixelSize: 48
            fontSizeMode: Text.Fit
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        TInputField {
            id: prizePercentageField
            labelText: qsTr("Prize Percentage")
            fieldPlaceHolderText: qsTr("Prize Percentage")
            Layout.fillHeight: true
            Layout.fillWidth: true
            textFieldValidator: DoubleValidator {
                bottom: 0
                decimals: 2
                notation: DoubleValidator.StandardNotation
            }
        }
        Button {
            id: createPrizeButton
            text: qsTr("Create Prize")
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
    }
}
