import 'package:flutter/material.dart';

class TaskListTile extends StatefulWidget {
  const TaskListTile({
    Key? key,
  }) : super(key: key);

  @override
  State<TaskListTile> createState() => _TaskListTileState();
}

class _TaskListTileState extends State<TaskListTile> {
  bool isChecked = false;

  void checkBoxCallBack(bool? checkBoxState) {
    if (checkBoxState != null) {
      setState(() {
        isChecked = checkBoxState;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 40.0,
      ),
      title: Text(
        'this is a task',
        style: TextStyle(
          decoration:
              isChecked ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      trailing: CheckboxState(
        onChecked: checkBoxCallBack,
        checkbox: isChecked,
      ),
    );
  }
}

class CheckboxState extends StatelessWidget {
  final bool checkbox;
  final ValueChanged<bool?> onChecked;
  const CheckboxState(
      {Key? key, required this.checkbox, required this.onChecked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      onChanged: onChecked,
      value: checkbox,
    );
  }
}
