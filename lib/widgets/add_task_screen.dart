import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addtaskCallback;
  AddTaskScreen(this.addtaskCallback);
  String newTatTitle;

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.only(top:20.0, left: 20.0, right: 20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(20.0), topLeft: Radius.circular(20.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text('Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 25.0,
            ),),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText){
                newTatTitle = newText;
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            FlatButton(
              child: Text('Add Task',
                  style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                  ),
                ),
                color: Colors.lightBlueAccent,
                onPressed: (){
                  addtaskCallback(newTatTitle);
                },
              )
          ],
        ),
      ),
    );
  }
}
