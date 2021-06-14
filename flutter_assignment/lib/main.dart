import 'package:flutter/material.dart';
import 'package:flutter_assignment/applyLeave.dart';
import 'package:flutter_assignment/attendanceScroller.dart';
import 'package:flutter_assignment/calendarScreen.dart';
import 'package:flutter_assignment/drawer.dart';
import 'package:flutter_assignment/holidayexpansion.dart';
import 'package:flutter_assignment/leaveScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
      initialRoute: '/',
      routes: {ApplyForLeaveScreen.routeName: (ctx) => ApplyForLeaveScreen()},
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool active = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Leave & Attendance"),
        backgroundColor: Colors.blue[700],
      ),
      drawer: MainDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AttendanceScrolling(),
            SizedBox(
              height: 10,
            ),
            MyCalendar(),
            SizedBox(
              height: 20,
            ),
            ApplyLeave(),
            SizedBox(
              height: 20,
            ),
            HolidayScroller(),
          ],
        ),
      ),
    );
  }
}
