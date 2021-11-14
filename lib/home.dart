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
                  GradientButton(color1: Colors.orange,
                    color2: Colors.red,
                    icon: Icons.ac_unit_outlined,),

                  GradientButton(color1: Colors.pink,
                    color2: Colors.purple,
                    icon: Icons.ac_unit_outlined,),

                  GradientButton(color1: Colors.blue,
                    color2: Colors.yellow,
                    icon: Icons.ac_unit_outlined,),

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              GradientButton(
                color1: Colors.pinkAccent,
                color2: Colors.purple,
                icon: Icons.check,
                size: 15.0,
              ),

              ElevatedButton(
                onPressed: () {},
                child: Icon(
                  Icons.calendar_today_outlined,
                  color: Colors.orange[900],
                  size: 30,
                ),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(20.0),
                  primary: Colors.white,
                ),
              ),

              GradientButton(
                color1: Color(0xFF0D7AEA),
                color2: Color(0xFF00D5F9),
                icon: Icons.add,
                size: 15.0,
                action: () {

                },
              ),

            ],
          ),
          SizedBox(height: 40.0,)
        ],
      ),
    );
  }
}