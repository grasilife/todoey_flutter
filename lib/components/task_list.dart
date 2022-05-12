import 'package:flutter/material.dart';
import 'package:todoey_flutter/components/task_title.dart';

class TaskList extends StatelessWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        TaskTitle(),
        TaskTitle(),
        TaskTitle(),
        TaskTitle(),
        TaskTitle(),
        TaskTitle(),
        TaskTitle(),
        TaskTitle(),
        TaskTitle(),
        TaskTitle(),
        TaskTitle(),
        TaskTitle(),
      ],
    );
  }
}
