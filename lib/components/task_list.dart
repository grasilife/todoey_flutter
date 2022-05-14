import 'package:flutter/material.dart';
import 'package:todoey_flutter/components/task_title.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class TaskList extends StatelessWidget {
  const TaskList({Key? key}) : super(key: key);

  void checkboxCallback(int index) {}
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTitle(
                isChecked: taskData.tasks[index].isDone,
                taskTitle: taskData.tasks[index].name,
                checkboxCallback: (value) {
                  taskData.tasks[index].toggleDone();
                });
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
