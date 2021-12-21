import 'package:flutter/material.dart';

class TaskListTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final ValueChanged<void> onChecked;

  const TaskListTile(
      {Key? key,
      required this.isChecked,
      required this.taskTitle,
      required this.onChecked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 40.0,
      ),
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration:
              isChecked ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
        // onChanged: isChecked,
        value: isChecked,
        onChanged: onChecked,
      ),
    );
  }
}

// void checkBoxCallBack(bool? checkBoxState) {
//   if (checkBoxState != null) {
//     setState(() {
//       isChecked = checkBoxState;
//     });
//   }
// }

///////////////////////

// CheckboxState(
//         onChecked: checkBoxCallBack,
//         checkbox: isChecked,
//       ),

///////////////////////////////

// class CheckboxState extends StatelessWidget {
//   final bool checkbox;
//   final ValueChanged<bool?> onChecked;
//   const CheckboxState(
//       {Key? key, required this.checkbox, required this.onChecked})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       onChanged: onChecked,
//       value: checkbox,
//     );
//   }
// }
