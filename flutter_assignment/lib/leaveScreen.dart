import 'package:flutter/material.dart';

import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class ApplyForLeaveScreen extends StatefulWidget {
  static const routeName = 'apply-for-leave';

  @override
  _ApplyForLeaveScreenState createState() => _ApplyForLeaveScreenState();
}

class _ApplyForLeaveScreenState extends State<ApplyForLeaveScreen> {
  String value = "";
  List<String> leave = [
    "CL/Contigency Leave",
    " Optional Holidays",
    " Special Privilege Leave ",
    "Others",
  ];
  String reasonChoosed = "Select Reason";
  List<String> reason = ["Reason1", "Reason2", "Reason3", "Others"];

  var checkbox = false;

  @override
  Widget build(BuildContext context) {
    final Maxheight = MediaQuery.of(context).size.height;
    final MaxWidth = MediaQuery.of(context).size.width;
    String now = DateFormat.yMd().format(DateTime.now());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        title: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "Leave & Attendance",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "Apply Leave",
                style: TextStyle(fontSize: 12),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        height: Maxheight,
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.blue[700],
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10.0),
                  topLeft: Radius.circular(10.0),
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Apply Leave",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Card(
                elevation: 10,
                child: TableCalendar(
                  calendarStyle: CalendarStyle(
                    weekendTextStyle: TextStyle(
                      color: Colors.blue[700],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  firstDay: DateTime.utc(2010, 10, 16),
                  lastDay: DateTime.utc(2030, 3, 14),
                  focusedDay: DateTime.now(),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: Maxheight * 0.11,
              width: MaxWidth * 0.9,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 20, top: 10),
                    child: Text(
                      "From Date*",
                      style: TextStyle(
                          color: Colors.blue[700],
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 2),
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      now,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: Maxheight * 0.11,
              width: MaxWidth * 0.9,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 20, top: 10),
                    child: Text(
                      "To Date*",
                      style: TextStyle(
                          color: Colors.blue[700],
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 2),
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      now,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: Maxheight * 0.13,
              width: MaxWidth * 0.9,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 20),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Type of Leave*",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.blue[700],
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.only(left: 15),
                    child: DropdownButton(
                      icon: Icon(
                        Icons.arrow_drop_down_outlined,
                        size: 20,
                        color: Colors.blue[700],
                      ),
                      hint: Text(
                        "Choose Option",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w300),
                      ),
                      onChanged: (newValue) {
                        setState(() {
                          value = newValue.toString();
                        });
                      },
                      items: leave.map((value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Transform.scale(
                  scale: 1.3,
                  child: Checkbox(
                      side: BorderSide(
                        width: 2,
                      ),
                      activeColor: Colors.blue[700],
                      value: checkbox,
                      onChanged: (value) {
                        setState(
                          () {
                            checkbox = !checkbox;
                          },
                        );
                      }),
                ),
                SizedBox(
                  width: MaxWidth * 0.04,
                ),
                Text(
                  "Apply for Half - Day",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
                ),
              ],
            ),
            Container(
              height: Maxheight * 0.13,
              width: MaxWidth * 0.9,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 20),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Reason*",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.blue[700],
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.only(left: 15),
                    child: DropdownButton(
                      icon: Icon(
                        Icons.arrow_drop_down_outlined,
                        size: 30,
                        color: Colors.blue[700],
                      ),
                      hint: Text(
                        reasonChoosed.toString(),
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w300),
                      ),
                      onChanged: (newValue) {
                        setState(() {
                          reasonChoosed = newValue.toString();
                        });
                      },
                      items: reason.map((value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 2),
                      borderRadius: BorderRadius.circular(10)),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "Cancel",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.blue[700],
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 35,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[400],
                  ),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "Confirm",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
