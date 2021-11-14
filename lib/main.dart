import 'package:flutter/material.dart';

void main() => runApp(const TaskManagerApp());

class TaskManagerApp extends StatelessWidget {
  const TaskManagerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'TODO',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
