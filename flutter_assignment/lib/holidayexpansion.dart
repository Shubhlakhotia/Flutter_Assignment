import 'package:flutter/material.dart';

class HolidayScroller extends StatefulWidget {
  // const HolidayScroller({ Key? key }) : super(key: key);

  @override
  _HolidayScrollerState createState() => _HolidayScrollerState();
}

class _HolidayScrollerState extends State<HolidayScroller> {
  bool active = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(10),
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
              headerBuilder: (
                BuildContext context,
                bool isExpanded,
              ) {
                return ListTile(
                  title: Text(
                    'Holiday Calendar',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                );
              },
              body: Container(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        '15th August | Sun',
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('Independence Day'),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      title: Text(
                        '10th September | Fri',
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('Ganesh Chaturthi'),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      title: Text(
                        '2nd October | Sat',
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('Gandhi Jayanti'),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          TextButton(
                              onPressed: () {}, child: Text('See All Holidays'))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              isExpanded: active,
            ),
          ],
        ),
      ),
    );
  }
}
