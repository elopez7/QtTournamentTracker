import QtQuick
import "../stringsdirectory"

CreatePrizeForm {
    createPrizeButton.onClicked: {
        screenLoader.source = ScreenNames.createTournamentScreen
    }
}
