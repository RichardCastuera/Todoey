import 'package:flutter/material.dart';
import '../model/task.dart';
import 'task_tile.dart';

class TasksList extends StatefulWidget {
  List<Task> task;

  TasksList({required this.task});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(30.0),
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked: widget.task[index].isDone,
          taskTitle: widget.task[index].name,
          checkboxCallback: (checkboxState) {
            setState(() {
              widget.task[index].toggleDone();
            });
          },
        );
      },
      itemCount: widget.task.length,
    );
  }
}
