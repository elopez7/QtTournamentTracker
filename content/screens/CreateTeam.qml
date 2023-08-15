import QtQuick
import "../stringsdirectory"

CreateTeamForm {
    createTeamButton.onClicked: {
        screenLoader.source = ScreenNames.createTournamentScreen
    }
}
