

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

BaseCard {
    id: root
    property alias createNewTeamButton: createNewTeamButton
    property alias createPrizeButton: createPrizeButton

    GridLayout {
        id: createTournamentLayout
        anchors.fill: parent
        anchors.rightMargin: 16
        anchors.leftMargin: 16
        anchors.bottomMargin: 28
        anchors.topMargin: 16
        rows: 8
        columns: 2

        Label {
            id: createTournamentLabel
            text: qsTr("Create Tournament")
            font.pixelSize: 32
            Layout.columnSpan: 2
            Layout.fillHeight: true
            Layout.fillWidth: true
            fontSizeMode: Text.Fit
            color: "#808080"
        }

        Label {
            id: tournamentNameLabel
            text: qsTr("Tournamen Name")
            font.pixelSize: 32
            verticalAlignment: Text.AlignBottom
            Layout.columnSpan: 2
            Layout.fillHeight: true
            Layout.fillWidth: true
            fontSizeMode: Text.Fit
            color: "#808080"
        }

        TextField {
            id: tournamentNameField
            Layout.columnSpan: 2
            Layout.fillHeight: true
            Layout.fillWidth: true
            placeholderText: qsTr("Text Field")
        }

        Label {
            id: entryFeeLabel
            text: qsTr("Entry Fee")
            font.pixelSize: 32
            verticalAlignment: Text.AlignVCenter
            Layout.preferredWidth: 2
            Layout.fillHeight: true
            Layout.fillWidth: true
            fontSizeMode: Text.Fit
            color: "#808080"
        }

        TextField {
            id: entryFeeField
            font.pixelSize: 32
            horizontalAlignment: Text.AlignRight
            Layout.maximumHeight: entryFeeLabel.height / 2
            Layout.preferredWidth: 2
            Layout.fillHeight: true
            Layout.fillWidth: true
            placeholderText: qsTr("0.00")
            validator: DoubleValidator {
                bottom: 0
                decimals: 2
                notation: DoubleValidator.StandardNotation
            }
        }

        Label {
            id: selectTeamLabel
            text: qsTr("Select Team")
            font.pixelSize: 32
            verticalAlignment: Text.AlignBottom
            Layout.preferredWidth: 2
            Layout.fillHeight: true
            Layout.fillWidth: true
            fontSizeMode: Text.Fit
            color: "#808080"
        }

        Button {
            id: createNewTeamButton
            text: qsTr("Create New")
            Layout.alignment: Qt.AlignLeft | Qt.AlignBottom
            Layout.maximumHeight: selectTeamLabel.height / 2
            Layout.preferredWidth: 2
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        ComboBox {
            id: teamsComboBox
            Layout.columnSpan: 2
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Button {
            id: addTeamButton
            text: qsTr("Add Team")
            Layout.preferredWidth: 2
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Button {
            id: createPrizeButton
            text: qsTr("Create Prize")
            Layout.preferredWidth: 2
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
    }
}
