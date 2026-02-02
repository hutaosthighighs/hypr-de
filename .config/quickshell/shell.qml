import Quickshell
import Quickshell.Wayland
import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts

PanelWindow {
    anchors {
        right: true
        left: true
        top: true
    }
    visible: true
    implicitHeight: 60
    color: "#1a1b26"
    
    RowLayout{
        anchors.fill: parent
        anchors.margin : 8
    }
}