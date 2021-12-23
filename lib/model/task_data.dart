import 'package:flutter/foundation.dart';
import 'package:todoey/model/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(task: "this is a ball", isDone: false),
    Task(task: "this is a boom", isDone: false),
  ];
}
