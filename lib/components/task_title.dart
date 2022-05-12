import 'package:flutter/material.dart';

class TaskTitle extends StatelessWidget {
  const TaskTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text("This is a task"),
      trailing: Checkbox(
        value: false,
        onChanged: (value) {},
      ),
    );
  }
}
