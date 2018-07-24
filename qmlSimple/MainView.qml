import QtQuick 2.7
import QtQuick.Window 2.2
import QtQuick.Controls 1.4

ApplicationWindow {
      id: window
      visible: true
      width: 800
      height: 600
      title: qsTr("Splash Demo")
      flags: Qt.Window | Qt.FramelessWindowHint

      Button{
          anchors{top: parent.top; right: parent.right;margins: 5}
          text: "X"
          width: 50
          height: 50
          onClicked: Qt.quit();
      }

      Text{
          text: qsTr("Test window");
          anchors.centerIn: parent
          font.pointSize: 30
      }
      Component.onCompleted:
      {
          window.show()
      }
  }
