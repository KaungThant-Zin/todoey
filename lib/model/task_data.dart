import 'package:flutter/foundation.dart';
import 'package:todoey/model/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(task: "this is a ball", isDone: false),
    Task(task: "this is a boom", isDone: false),
  ];

  void addTask(String newTaskTitle) {
    final task = Task(task: newTaskTitle, isDone: false);
    tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toogleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
