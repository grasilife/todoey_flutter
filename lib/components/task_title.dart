import 'package:flutter/material.dart';

class TaskTitle extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final VoidCallback? onLongPressCallback;
  const TaskTitle({
    required this.isChecked,
    required this.taskTitle,
    required this.checkboxCallback,
    this.onLongPressCallback,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckBox(
        checkboxState: isChecked,
        checkboxCallback: checkboxCallback,
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkboxState;
  final Function checkboxCallback;
  const TaskCheckBox({
    required this.checkboxState,
    required this.checkboxCallback,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged: (value) {
        checkboxCallback(value);
      },
    );
  }
}
