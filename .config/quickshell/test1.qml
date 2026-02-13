import Quickshell
import QtQuick
import QtQuick.Layouts

FloatingWindow {
    color: "#1a1b26"
    RowLayout{
        anchors.fill:parent
        Repeater{
            model:5
            Image{
                Layout.alignment: Qt.AlignCenter
                Layout.preferredHeight:sourceSize.height/10
                Layout.preferredWidth:sourceSize.width/10
                source: "../../assets/wallpapers/wallpaper" + index +".png";
            }
        }
    }
}