import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/model/task_data.dart';

class AddTask extends StatelessWidget {

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
              Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle!);
              Navigator.pop(context);
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
