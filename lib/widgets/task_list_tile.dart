import 'package:flutter/material.dart';

class TaskListTile extends StatelessWidget {
  const TaskListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 40.0,
      ),
      title: const Text('this is a task'),
      trailing: Checkbox(
        onChanged: (fasle) {},
        value: false,
      ),
    );
  }
}
