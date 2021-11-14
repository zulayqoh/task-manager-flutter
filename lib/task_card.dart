import 'package:flutter/material.dart';
import 'gradient_button.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 5),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GradientButton(
                  color1: Colors.purple,
                  color2: Colors.red,
                  icon: Icons.check,
                size: 5.0,
              ),
              Expanded(
                child: Text(
                  'This data is our Todo,This data is o Todo',
                  textAlign: TextAlign.start,
                ),
              ),
              Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '27 Jun',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 3),
                  Text('20:12')
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
