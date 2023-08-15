

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
import "../tcontrols"

BaseCard {
    id: root

    GridLayout {
        id: mathupLayout
        anchors.fill: root
        anchors.rightMargin: 16
        anchors.leftMargin: 16
        anchors.bottomMargin: 32
        anchors.topMargin: 16
        columnSpacing: 16
        rows: 2
        columns: 2

        Label {
            id: tournamentLabel
            color: "#808080"
            text: qsTr("Tournament:")
            font.pixelSize: 48
            fontSizeMode: Text.Fit
            Layout.preferredWidth: 1
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Label {
            id: tournamentName
            color: "#808080"
            text: qsTr("<none>")
            font.pixelSize: 48
            fontSizeMode: Text.Fit
            Layout.preferredWidth: 1
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Label {
            id: roundLabel
            color: "#808080"
            text: qsTr("Round")
            font.pixelSize: 32
            fontSizeMode: Text.Fit
            Layout.preferredWidth: 1
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        ComboBox {
            id: roundComboBox
            Layout.preferredWidth: 1
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Item {
            id: spacer
            Layout.preferredWidth: 1
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        TCheckBox {
            id: checkBox
            text: qsTr("Unplayed Only")
            font.pixelSize: 32
            Layout.preferredWidth: 1
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
        }

        TMatchupListView {
            id: matchupListView
            Layout.preferredWidth: 2
            Layout.columnSpan: 2
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
    }
}
