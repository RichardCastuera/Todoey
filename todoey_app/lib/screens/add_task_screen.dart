import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  Function addTaskCallback;

  AddTask({required this.addTaskCallback});

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Container(
      padding: EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.lightBlueAccent,
              fontWeight: FontWeight.w500,
            ),
          ),
          TextField(
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newTaskTitle = newText;
            },
          ),
          SizedBox(
            height: 20.0,
          ),
          TextButton(
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.lightBlueAccent),
              padding: MaterialStatePropertyAll(
                EdgeInsets.symmetric(vertical: 20.0),
              ),
            ),
            onPressed: () {
              addTaskCallback(newTaskTitle);
            },
            child: const Text(
              'Add',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
