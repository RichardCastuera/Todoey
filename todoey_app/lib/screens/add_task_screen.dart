import 'package:flutter/material.dart';

Container addTask() {
  return Container(
    padding: EdgeInsets.all(30.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Add Task',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.lightBlueAccent,
            fontWeight: FontWeight.w500,
          ),
        ),
        const TextField(),
        const SizedBox(
          height: 20.0,
        ),
        TextButton(
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.lightBlueAccent),
            padding: MaterialStatePropertyAll(
              EdgeInsets.symmetric(vertical: 20.0),
            ),
          ),
          onPressed: () {},
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
