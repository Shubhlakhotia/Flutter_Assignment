import 'package:flutter/material.dart';

// import 'package:flutter_assignment/leaveScreen.dart';
class MainDrawer extends StatelessWidget {
  // const MainDrawer({ Key? key }) : super(key: key);
  Widget buildListTile(String title, IconData icon, Function handler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      onTap: handler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 100,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Colors.blue[700],
            child: Text(
              "Leave & Attendance",
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                  color: Colors.white),
            ),
          ),
          buildListTile("Home", Icons.home, () {
            Navigator.of(context).pushNamed('/');
          }),
        ],
      ),
    );
  }
}
