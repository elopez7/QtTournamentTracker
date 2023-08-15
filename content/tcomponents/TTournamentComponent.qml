import QtQuick
import "../stringsdirectory"

TTournamentComponentForm {
    createPrizeButton.onClicked:{
        screenLoader.source = ScreenNames.createPrizecreen
    }

    createNewTeamButton.onClicked: {
        screenLoader.source = ScreenNames.createTeamScreen
    }
}
