import 'package:flutter/material.dart';

class AttendanceScrolling extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              width: 120,
              height: 120,
              // height: categoryHeight,
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                  color: Colors.red.shade400,
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Absent Days For Current & Last Month -",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "__",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[Icon(Icons.home)],
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: 120,
              height: 120,
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                  color: Colors.blue[700],
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Leave & Regularization History",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "__",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[Icon(Icons.timer)],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: 120,
              height: 120,
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                  color: Colors.blue[700],
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Time Report-Team",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "__",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[Icon(Icons.people)],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
