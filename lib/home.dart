import 'package:flutter/material.dart';
import 'package:task_manager/task_card.dart';
class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.white70,
        title: Text(
          'TODO',
          style: TextStyle(color: Colors.black),
        ),
      ),
      endDrawer: Drawer(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                'NEW TASK',
              style: TextStyle(color: Colors.blue),),
            ],
          ),
        ),
      ),
      body: TaskCard(),
    );
  }
}
