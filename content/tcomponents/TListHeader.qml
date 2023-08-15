import QtQuick
import QtQuick.Controls

Rectangle {
    id: listHeader
    width: ListView.view.width
    height: 64
    property alias headerText: headerText.text
    Label {
        id: headerText
        text: qsTr("<NONE>")
        anchors.fill: parent
        font.pixelSize: 32
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        fontSizeMode: Text.Fit
        color: "#808080"
    }
}
