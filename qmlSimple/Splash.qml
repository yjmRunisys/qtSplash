import QtQuick 2.7
import QtQuick.Window 2.2

Window {
      id: splash
      color: "transparent"
      title: "Splash Window"
      modality: Qt.ApplicationModal
      flags: Qt.SplashScreen | Qt.WindowStaysOnTopHint
      x: (Screen.width - splashImage.width) / 2
      y: (Screen.height - splashImage.height) / 2
      width: splashImage.width
      height: splashImage.height
      visible:true;

      Image {
          width:Screen.width*0.66;
          height: Screen.height*0.66;
          id: splashImage
          source: "qrc:/res/logo.gif"//splashscreen.png
      }
      Text{
          id: textCtrl
          width: contentWidth
          height: contentHeight
          anchors
          {
              left: splashImage.left;
              bottom: splashImage.bottom
          }
          font
          {
              pointSize: 30
          }
      }
      Timer {
          id: timer
          interval: 1000;
          running: false;
          repeat: false
          onTriggered: {
              splash.visible = false;
          }
      }

      function delay(){
          timer.start();
      }
}
