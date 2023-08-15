import QtQuick
import "../stringsdirectory"

TournamentDashboardForm {
    loadTournamentButton.onClicked: {
        screenLoader.source = ScreenNames.tournamentViewerScreen
    }

    createTournamentButton.onClicked: {
        screenLoader.source = ScreenNames.createTournamentScreen
    }
}
