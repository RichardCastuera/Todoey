import 'package:flutter/material.dart';
import 'task_tile.dart';

ListView tasksList() {
  return ListView(
    padding: EdgeInsets.all(
      30.0,
    ),
    children: [
      taskTile(),
      taskTile(),
      taskTile(),
    ],
  );
}
