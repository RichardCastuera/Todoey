import 'package:flutter/material.dart';

ListTile taskTile() {
  return ListTile(
    title: Text('This is a task'),
    trailing: Checkbox(
      value: false,
      onChanged: (value) {},
    ),
  );
}
