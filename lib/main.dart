import 'package:flutter/material.dart';
import 'package:task_manager/task_card.dart';

void main() => runApp(const TaskManagerApp());

class TaskManagerApp extends StatelessWidget {
  const TaskManagerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white70,
          title: Text(
            'TODO',
            style: TextStyle(color: Colors.black),
          ),
        ),
        endDrawer: Drawer(),
        body: TaskCard(),
      ),
    );
  }
}

