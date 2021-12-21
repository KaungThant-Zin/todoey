class Task {
  late String task;
  late bool isDone = false;
  Task({required this.task, required this.isDone});
  void toogleDone() {
    isDone = !isDone;
  }
}
