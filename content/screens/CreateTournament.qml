import QtQuick
import "../stringsdirectory"

CreateTournamentForm {
    createTournamentButton.onClicked: {
        screenLoader.source = ScreenNames.dashboardScreen
    }
}
