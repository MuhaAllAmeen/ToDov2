import QtQuick


        Rectangle{
        id : toDoInputPage
        width: root.width; height: root.height
        color: "white"
    Text{
        id:heading2
        text: "Input the To Do Here!"
        anchors {top: parent.top; topMargin: 10 ;horizontalCenter:parent.horizontalCenter}
        font.pixelSize: 20
        color: "black"
    }

    Rectangle{
        id: inputArea
        width: toDoInputPage.width-30
        height: 40 ; radius: 30
        anchors {top:heading2.bottom; topMargin:20; horizontalCenter:parent.horizontalCenter}
        gradient: Gradient{
            GradientStop {position: 0.0; color: "lightsteelblue" }
            GradientStop { position: 1.0; color: "slategray" }
        }

        TextEdit{
            id:textEdit
            anchors {fill: parent; verticalCenter: parent.verticalCenter}
            font.pixelSize: 15
            padding: 10
        }
    }
    Rectangle{
        width:40; height:25; radius: 10
        color: "slategray"
        anchors {top:inputArea.bottom; topMargin:10; horizontalCenter:parent.horizontalCenter}
        Text{
            text: "Add"
            anchors.centerIn: parent
        }
        MouseArea{
            anchors.fill: parent
            onClicked: {
                toDoText.text=textEdit.text+" Added!"
                listModel.append({"toDo":textEdit.text})
                console.log(listModel.count)
                textEdit.clear()
                loader.active=false
            }
        }
    }

    Text{

        id: toDoText
        anchors.centerIn: parent

    }
    Rectangle{
        width:40; height:25; radius: 10
        color: "#2a78d1"
        Text{
        text: "Back"
        anchors.centerIn: parent
        }
        MouseArea{
            anchors.fill: parent
            onClicked: loader.active=false
        }
    }
}
