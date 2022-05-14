import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen(this.addTaskCallback, {Key? key}) : super(key: key);
  final Function addTaskCallback;

  @override
  Widget build(BuildContext context) {
    String newTextTitle = '';
    return Container(
      color: const Color(0xff757575),
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            )),
        child: Column(
          children: [
            const Text(
              'Add task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                newTextTitle = value;
              },
            ),
            FlatButton(
              onPressed: () {
                print(newTextTitle);
                addTaskCallback(newTextTitle);
              },
              child: const Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.lightBlueAccent,
            )
          ],
        ),
      ),
    );
  }
}
