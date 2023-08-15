cmake_minimum_required(VERSION 3.23)

qt_add_library(content STATIC)
qt6_add_qml_module(content
    URI "content"
    VERSION 1.0
    PLUGIN_TARGET contentplugin
    QML_FILES
        App.qml
        stringsdirectory/ScreenNames.qml
        screens/TournamentDashboard.qml
        screens/CreatePrize.qml
        screens/CreateTeamForm.ui.qml
        screens/CreateTeam.qml
        screens/CreateTournament.qml
        screens/TournamentViewerForm.ui.qml
        screens/TournamentViewer.qml
        screens/CreatePrizeForm.ui.qml
        screens/CreateTournamentForm.ui.qml
        screens/TournamentDashboardForm.ui.qml
        tcomponents/TNewMemberPanelForm.ui.qml
        tcomponents/TTournamentComponentForm.ui.qml
        tcomponents/TListHeader.qml
        tcomponents/TPlayerListComponentForm.ui.qml
        tcomponents/TMatchupScoreComponentForm.ui.qml
        tcomponents/TTeamMembersComponentForm.ui.qml
        tcomponents/BaseCard.ui.qml
        tcomponents/TTeamComponentForm.ui.qml
        tcomponents/TMatchupScoreComponent.qml
        tcomponents/TTeamScoreField.qml
        tcomponents/TPrizesListComponentForm.ui.qml
        tcomponents/TNewMemberPanel.qml
        tcomponents/TTournamentComponent.qml
        tcomponents/TTeamComponent.qml
        tcomponents/TPrizesListComponent.qml
        tcomponents/TTeamMembersComponent.qml
        tcomponents/TPlayerListComponent.qml
        tcomponents/TTeamScoreFieldForm.ui.qml
        tcontrols/TCheckBox.ui.qml
        tcontrols/TInputField.ui.qml
        tviews/TTournamentPlayersList.ui.qml
        tviews/TTournamentPrizesList.ui.qml
        tviews/TTournamentPrizesListModel.qml
        tviews/TViewMatchUpComponentForm.ui.qml
        tviews/TMatchupListViewModel.qml
        tviews/TTournamentPlayersListModel.qml
        tviews/TMatchupListViewDelegate.ui.qml
        tviews/TTournamentPrizesListDelegate.ui.qml
        tviews/TTeamMembersListView.ui.qml
        tviews/TViewMatchUpComponent.qml
        tviews/TTeamMembersListViewModel.qml
        tviews/TTournamentPlayersListDelegate.ui.qml
        tviews/TTeamMembersListViewDelegate.ui.qml
        tviews/TMatchupListView.ui.qml
    RESOURCES
        images/card.png
)



