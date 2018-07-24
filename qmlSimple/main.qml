import QtQuick 2.7
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
//import QtQuick.Controls.Styles 1.4
//import QtQuick.Dialogs 1.2
//import QtCharts 2.1
//import QtQuick.Layouts 1.3
//import QtGraphicalEffects 1.0


QtObject {
     id: root
     property QtObject $splashScreen: Splash{}

     property var loader: Loader{
         asynchronous: true
         source: "qrc:/MainView.qml"
         active: false
         onLoaded: {
             $splashScreen.delay();
         }
     }

     Component.onCompleted:{
         loader.active = true;
     }
 }
