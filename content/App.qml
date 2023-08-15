import QtQuick
import QtQuick.Controls
import "stringsdirectory"
import "screens"
import "tcomponents"

ApplicationWindow {
    width: 1024
    height: 768

    visible: true
    title: "QTournamentTracker"

    BaseCard{
        id: appBackground
        anchors.fill: parent


        Loader{
            id: screenLoader
            anchors.fill: appBackground
            source: ScreenNames.dashboardScreen
        }
    }
}
