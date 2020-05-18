import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkBoxCallBack;

  TaskTile({this.isChecked, this.taskTitle, this.checkBoxCallBack});

//  void toggleCheckBox
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          taskTitle,
          style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough:null,
            ),
          ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: checkBoxCallBack
    ));
  }
}

//class TaskCheckBox extends StatelessWidget {
//  TaskCheckBox({this.checkBoxState, this.toggleCheckBoxState});
//  final bool checkBoxState;
//  final Function toggleCheckBoxState;
//
//  @override
//  Widget build(BuildContext context) {
//    return
//  }
//}