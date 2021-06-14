import 'package:flutter/material.dart';
import 'package:flutter_assignment/leaveScreen.dart';

class ApplyLeave extends StatefulWidget {
  // const ApplyLeave({ Key? key }) : super(key: key);

  @override
  _ApplyLeaveState createState() => _ApplyLeaveState();
}

class _ApplyLeaveState extends State<ApplyLeave> {
  bool active = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(10),
      child: Container(
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
                    'Apply Leave',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                );
              },
              body: Container(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    ListTile(
                      title: Text('CL/Contigency Leave'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                              width: double.infinity,
                              child: Text(
                                  '8.0 Remaining\nValid Till: 31/12/2021')),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .pushNamed(ApplyForLeaveScreen.routeName);
                              },
                              child: Text('APPLY'))
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      title: Text('Optional Holiday'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                              width: double.infinity,
                              child: Text(
                                  '3.0 Remaining\nValid Till: 31/12/2021')),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .pushNamed(ApplyForLeaveScreen.routeName);
                              },
                              child: Text('APPLY'))
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      title: Text('Special Privilege Leave'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                              width: double.infinity,
                              child: Text(
                                  '10.0 Remaining\nValid Till: 31/12/2021')),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .pushNamed(ApplyForLeaveScreen.routeName);
                              },
                              child: Text('APPLY'))
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          TextButton(onPressed: () {}, child: Text('See More')),
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
