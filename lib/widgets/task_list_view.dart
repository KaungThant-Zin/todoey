import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_list_tile.dart';

class TaskListView extends StatelessWidget {
  const TaskListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        TaskListTile(),
      ],
    );
  }
}
