import 'package:flutter/material.dart';
import 'package:todoey_flutter/components/task_title.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskList extends StatefulWidget {
  const TaskList({required this.tasks, Key? key}) : super(key: key);
  final List<Task> tasks;

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  void checkboxCallback(int index) {}
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTitle(
            isChecked: widget.tasks[index].isDone,
            taskTitle: widget.tasks[index].name,
            checkboxCallback: (value) {
              setState(() {
                widget.tasks[index].toggleDone();
              });
            });
      },
      itemCount: widget.tasks.length,
    );
  }
}
