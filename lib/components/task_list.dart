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
            final task = taskData.tasks[index];
            return TaskTitle(
              isChecked: task.isDone,
              taskTitle: task.name,
              checkboxCallback: () {
                taskData.updateTask(task);
              },
              onLongPressCallback: () {
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
