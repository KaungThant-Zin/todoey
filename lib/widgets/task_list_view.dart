import 'package:flutter/material.dart';
import 'package:todoey/model/task.dart';
import 'package:todoey/widgets/task_list_tile.dart';

class TaskListView extends StatefulWidget {
  final List<Task> tasks;

  const TaskListView({
    Key? key,
    required this.tasks,
  }) : super(key: key);

  @override
  State<TaskListView> createState() => _TaskListViewState();
}

class _TaskListViewState extends State<TaskListView> {
  // List<Task> tasks = [
  //   Task(task: "this is a ball", isDone: false),
  //   Task(task: "this is a boom", isDone: false),
  // ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskListTile(
          isChecked: widget.tasks[index].isDone,
          taskTitle: widget.tasks[index].task,
          onChecked: (value) {
            setState(() {
              widget.tasks[index].toogleDone();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
