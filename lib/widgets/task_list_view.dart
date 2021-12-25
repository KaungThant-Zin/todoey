import 'package:flutter/material.dart';
// import 'package:todoey/model/task.dart';
import 'package:todoey/widgets/task_list_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey/model/task_data.dart';

class TaskListView extends StatelessWidget {
  // final List<Task> tasks;

  const TaskListView({
    Key? key,
  }) : super(key: key);

  // List<Task> tasks = [
  //   Task(task: "this is a ball", isDone: false),
  //   Task(task: "this is a boom", isDone: false),
  // ];

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, taskData, Widget? child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskListTile(
              isChecked: taskData.tasks[index].isDone,
              taskTitle: taskData.tasks[index].task,
              onChecked: (value) {
                taskData.updateTask(taskData.tasks[index]);
              },
              onLong: () {
                taskData.deleteTask(taskData.tasks[index]);
              },
            );
          },
          itemCount: taskData.tasks.length,
        );
      },
    );
  }
}
