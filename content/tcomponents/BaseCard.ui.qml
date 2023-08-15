

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick
import QtQuick.Controls

Item {
    id: root

    BorderImage {
        id: borderImage
        anchors.fill: root
        source: "../images/card.png"
        border {
            left: 100
            top: 100
            right: 100
            bottom: 100
        }
    }
}
