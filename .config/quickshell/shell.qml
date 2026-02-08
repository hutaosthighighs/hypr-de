import Quickshell
import Quickshell.Wayland
import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts

PanelWindow {
    anchors.top: true
    anchors.left: true
    anchors.right: true
    implicitHeight: 30
    color: "#1a1b26"

    RowLayout {
        anchors.fill: parent
        anchors.margins: 8

        Repeater {
            model: Hyprland.workspaces

            Text {
                property var ws: Hyprland.workspaces.values.find(w => w.id === index + 14)
                property bool isActive: Hyprland.focusedWorkspace?.id === (ws.id)
                text: ws.id
                color: isActive ? "#0db9d7" : (ws ? "#7aa2f7" : "#444b6a")
                font { pixelSize: 14; bold: true }
            
                MouseArea {
                    anchors.fill: parent
                    onClicked: Hyprland.dispatch("workspace " + (index + 1))
                }
            }
        }

        Item { Layout.fillWidth: true }
    }
}