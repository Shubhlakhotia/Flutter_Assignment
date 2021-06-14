import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:table_calendar/table_calendar.dart';

class MyCalendar extends StatefulWidget {
  // const MyCalendar({ Key? key }) : super(key: key);

  @override
  _MyCalendarState createState() => _MyCalendarState();
}

class _MyCalendarState extends State<MyCalendar> {
  bool active = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        child: ExpansionPanelList(
          expandedHeaderPadding: EdgeInsets.all(0),
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              active = !active;
            });
          },
          children: [
            ExpansionPanel(
              canTapOnHeader: true,
              backgroundColor: Colors.blue[700],
              headerBuilder: (BuildContext context, bool isExpanded) {
                return ListTile(
                  title: Text(
                    'My Calendar',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              },
              body: Container(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
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
              isExpanded: active,
            )
          ],
        ),
      ),
    );
  }
}
