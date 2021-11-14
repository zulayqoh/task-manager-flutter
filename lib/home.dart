import 'package:flutter/material.dart';
import 'package:task_manager/gradient_button.dart';
import 'package:task_manager/long_button.dart';
import 'package:task_manager/task_card.dart';

class Home extends StatelessWidget {
  Home({
    Key? key,
  }) : super(key: key);

  List<Widget> todos = [];
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
        child: ListView(
          children: [
            ListTile(
              title: Text('New Todo'),
            ),

            ListTile(
              title: Text('Icon'),
              subtitle: Row(
                children: const [
                  GradientButton(color1: Colors.orange, color2: Colors.red, icon: Icons.ac_unit_outlined,),

                  GradientButton(color1: Colors.pink, color2: Colors.purple, icon: Icons.ac_unit_outlined,),

                  GradientButton(color1: Colors.blue, color2: Colors.yellow, icon: Icons.ac_unit_outlined,),

                ],
              ),
            ),

            ListTile(
              title: Text('Name'),
              subtitle: TextField(),
            ),

            SizedBox(height: 20.0,),

            ListTile(
              title: Text('Description'),
              subtitle: TextFormField(
                  maxLines: 5,
                  decoration: InputDecoration(fillColor: Colors.white,
                      hintText: 'Enter your description',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0))
                      )
                  ),
              ),
            ),

            SizedBox(height: 20.0,),

            ListTile(
              title: Text('Date'),
              subtitle: TextField(),
            ),

            SizedBox(height: 20.0,),

            ListTile(
              title: Text('Time'),
              subtitle: TextField(),
            ),

            SizedBox(height: 20.0,),

            ListTile(
              title: Container(
                margin: EdgeInsets.only(right: 150),
                child: LongButton(
                  text: 'Add',
                  onPressed: () {

                    Navigator.of(context).pop();
                  },
                ),
              ),
            ),

          ],
        ),
      ),

      body: Row(
        children: [
          TaskCard()
        ],
      ),
    );
  }
}
