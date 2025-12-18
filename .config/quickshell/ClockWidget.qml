import QtQuick

Item {
  Rectangle {
    anchors.fill: parent
    radius: width / 2
    color: "#34253d"

    Text {
      anchors.centerIn: parent
      text: Time.time
    }
  }
}
