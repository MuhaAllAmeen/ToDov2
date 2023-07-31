import QtQuick
import QtQuick.Window

Window {
    width: 340
    height: 450
    visible: true
    color: "white"
    id: root
    title: qsTr("To Do List")

        Text{
            id:heading1
            anchors {top: parent.top; topMargin:10; horizontalCenter: parent.horizontalCenter}
            text: "To-Do List"
            color: "black"
            font.pixelSize: 20
        }

        ListModel{
            id:listModel

        }

        Loader{
            id:loader
            active:false
            source:"ToDoInput.qml"
            z:1
        }
        ListView{
            id: listView
            anchors { top: heading1.bottom; topMargin:30; bottom:parent.bottom; left: parent.left; right:parent.right; }
            model: listModel
            width: parent.width
            spacing:5

            delegate: Rectangle{
                width: root.width-20; height: 30; radius:30

                anchors.horizontalCenter: parent.horizontalCenter
                gradient: Gradient{
                    GradientStop {position: 0.0; color: "lightsteelblue" }
                    GradientStop { position: 1.0; color: "slategray" }
                }
                Text{
                    text: toDo
                    anchors {verticalCenter: parent.verticalCenter; left: parent.left; leftMargin: 10}
                }
                Rectangle{
                    width:20; height:20; radius:10
                    anchors {right: parent.right; rightMargin: 10; verticalCenter:parent.verticalCenter}
                    Text{
                    text: "X"
                    anchors.centerIn:parent
                    }
                    MouseArea{ anchors.fill: parent; onClicked: listModel.remove(index) }
                }

            }
        }
        Row{
            id:btnsRow
            anchors {bottom: parent.bottom; bottomMargin: 10; left:parent.left; leftMargin: 10; right:parent.right; rightMargin: 10}
            spacing:230
            Rectangle{
                height:20; width:40; radius: 10
                color:"#2a78d1"
                Text{
                id:addBtn
                text: "+"
                anchors.centerIn: parent
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: loader.active=true
                }
            }
            Rectangle{
                height:20; width:50; radius: 10
                color:"#2a78d1"

                Text{
                text: "Clear"
                anchors.centerIn: parent
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: listModel.clear()
                }
            }
        }
}
