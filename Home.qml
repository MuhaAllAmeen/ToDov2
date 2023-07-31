import QtQuick
import QtQuick.Controls

Item{
    width: root.width; height:root.height
    Rectangle{
        height: root.height;width:root.width;color:"red"
    }

//    Label{
//        anchors {top: parent.top; topMargin:10; horizontalCenter: parent.horizontalCenter}
//        text: "To-Do Input"
//        color: "black"
//        font.pixelSize: 20
//    }
//    Button{
//        anchors {bottom:parent.bottom; bottomMargin: 10; right:parent.right; rightMargin: 10}
//        text: "+"
//        highlighted: true
//        onClicked: {}
//    }
}
