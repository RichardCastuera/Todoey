import 'package:flutter/material.dart';
import '../model/task_data.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          padding: EdgeInsets.all(30.0),
          itemBuilder: (context, index) {
            return TaskTile(
              isChecked: taskData.tasks?[index].isDone,
              taskTitle: taskData.tasks?[index].name,
              checkboxCallback: (checkboxState) {
                taskData.updateTask(taskData.tasks![index]);
              },
              longPressCallBack: () =>
                  taskData.deleteTask(taskData.tasks![index]),
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
