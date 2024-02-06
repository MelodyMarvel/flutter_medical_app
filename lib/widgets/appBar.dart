import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppBar({super.key});

@override
Size get preferredSize => Size.fromHeight(60.0);
  
  @override
  Widget build(BuildContext context) {
    return AppBar(
          title: Row(
            children: <Widget>[
              Builder(
                builder: (BuildContext context) {
                  return IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                  );
                },
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 6.0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Good morning Dr. Abigail',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0),
                        child: Text(
                          'Its a greate day to work',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(50.0, 20.0, 10.0, 0.0),
                  child: IconButton(
                    icon: Icon(Icons.notifications),
                    onPressed: () {},
                    color: Colors.teal[600],
                    iconSize: 28.0,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30.0, 0, 0.0, 0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/mel.jpg'),
                    radius: 30.0,
                  ),
                ),
              ),
            ],
          ),
        );
  }

}