import QtQuick
import "../stringsdirectory"
import tracker

CreatePrizeForm {
    createPrizeButton.onClicked: {
        console.log(placeNumber + " " + placeName + " " + prizeAmount + " " + prizePercentage)
        TrackerDatabase.addPrizeToDatabase(placeNumber, placeName, prizeAmount, prizePercentage);
        screenLoader.source = ScreenNames.createTournamentScreen
    }
}
