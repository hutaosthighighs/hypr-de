// Bar.qml
import Quickshell
import Quickshell.Io
import QtQuick

import QtQuick.Layouts

Scope {
  Variants {
    model: Quickshell.screens

    PanelWindow {
      required property var modelData
      screen: modelData

      anchors {
        top: true
        left: true
        right: false
        bottom: true
      }

      implicitWidth: 30
      ClockWidget {
        width: parent.width
        height: width
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
      }
    }
  }
}
