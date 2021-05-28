import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter_svg/flutter_svg.dart';

class dashboard extends StatefulWidget {
  @override
  _dashboardState createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  final String rider = 'assets/rider.svg';
  final String logo = 'assets/logo.svg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color(0xffede5f2),
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
              child: Row(
                children: [
                  Text('Calculate Cost',
                    style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w900, color: Color(0xff282662) ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
              child: Row(
                children: [
                  Text('Please specify pickup location and destination of',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Color(0xff282662)),
                  )
                ],
              ),
            ),
           Padding(
             padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
             child: Row(
               children: [
                 Text('your package. calculate cost of courier and send it.',
                   style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Color(0xff282662)),
                 ),
               ],
             ),
           ),
           SizedBox(
             height: 20,
           ),
           Padding(
             padding: EdgeInsetsDirectional.fromSTEB(28, 0, 0, 0),
             child: Row(
               children: [
                 Column(
                   children: [
                     Container(
                       child: Icon(Icons.location_searching, color: Color(0xff282662),),
                     ),
                     DottedLine(
                       direction: Axis.vertical,
                       lineLength: 50.0,
                       lineThickness: 4.0,
                       dashLength: 4.0,
                       dashColor: Color(0xff282662),
                       dashRadius: 10.0,
                       dashGapLength: 4.0,
                       dashGapColor: Colors.transparent,
                       dashGapRadius: 0.0,
                     ),
                     Container(
                       child: Icon(Icons.location_on, color: Color(0xff282662),),
                     )
                   ],
                 ),
                 Column(
                   children: [
                     SizedBox(
                       width: 280.0,
                       height: 50.0,
                       child: TextField(
                         style: TextStyle(fontSize: 14, color: Color(0xff282662)),
                         decoration: InputDecoration(
                             hintText: "Pickup location",
                             hintStyle: TextStyle(color: Color(0xffa8a1bb)),
                             filled: true,
                             border: OutlineInputBorder(borderSide: BorderSide(color: Color(0xff282662), width: 1.0), borderRadius: const BorderRadius.all(
                               const Radius.circular(5.0),
                             ),),
                             fillColor: Colors.white,
                             enabledBorder: OutlineInputBorder(borderSide: const BorderSide(color: Color(0xffede5f2), width: 0.0),borderRadius: const BorderRadius.all(
                               const Radius.circular(5.0),

                             ),)
                         ),
                       ),
                     ),
                     SizedBox(
                       height: 20,
                     ),
                     SizedBox(
                       width: 280.0,
                       height: 50.0,
                       child: TextField(
                         style: TextStyle(fontSize: 14, color: Color(0xff282662)),
                         decoration: InputDecoration(
                             hintText: "Dropoff location",
                             hintStyle: TextStyle(color: Color(0xffa8a1bb)),
                             filled: true,
                             border: OutlineInputBorder(borderSide: BorderSide(color: Color(0xff282662), width: 1.0), borderRadius: const BorderRadius.all(
                               const Radius.circular(5.0),
                             ),),
                             fillColor: Colors.white,
                             enabledBorder: OutlineInputBorder(borderSide: const BorderSide(color: Color(0xffede5f2), width: 0.0),borderRadius: const BorderRadius.all(
                               const Radius.circular(5.0),

                             ),)
                         ),
                       ),
                     )
                   ],
                 )
               ],
             ),
           ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(25, 20, 0, 0),
              child: Row(
                children: [
                  Text('Package size',
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500, color: Color(0xff282662) ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Card(
                    elevation: 0.0,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text('Small',
                          style: TextStyle(fontSize: 12.0, color: Color(0xff282662) ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                          child: SvgPicture.asset(
                            rider,
                            placeholderBuilder: (context) => CircularProgressIndicator(),
                            width: 50.0,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('< 1kg',
                          style: TextStyle(fontSize: 12.0, color: Color(0xff282662) ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 0.0,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text('Medium',
                          style: TextStyle(fontSize: 12.0, color: Color(0xff282662) ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                          child: SvgPicture.asset(
                            rider,
                            placeholderBuilder: (context) => CircularProgressIndicator(),
                            width: 50.0,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('1 - 3kg',
                          style: TextStyle(fontSize: 12.0, color: Color(0xff282662) ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 0.0,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text('Large',
                          style: TextStyle(fontSize: 12.0, color: Color(0xff282662) ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                          child: SvgPicture.asset(
                            rider,
                            placeholderBuilder: (context) => CircularProgressIndicator(),
                            width: 50.0,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('3 - 10kg',
                          style: TextStyle(fontSize: 12.0, color: Color(0xff282662) ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 0.0,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text('Extra Large',
                          style: TextStyle(fontSize: 12.0, color: Color(0xff282662) ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                          child: SvgPicture.asset(
                            rider,
                            placeholderBuilder: (context) => CircularProgressIndicator(),
                            width: 50.0,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('> 10kg',
                          style: TextStyle(fontSize: 12.0, color: Color(0xff282662) ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            SizedBox(
              width: 300.0,
              height: 42.0,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                color: Color(0xff282662),
                onPressed: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => dashboard()),
                  );
                },
                child: Text(
                    'Calculate',
                    style: TextStyle(color: Colors.white, fontSize: 17.0, fontWeight: FontWeight.w500)
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        backgroundColor: Color(0xffede5f2),// this will be set when a new tab is tapped
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.mail),
            title: new Text('Send'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Track')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('History')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile')
          )
        ],
      ),
    );
  }
}