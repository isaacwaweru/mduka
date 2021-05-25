import 'package:flutter/material.dart';
import 'package:courier_app/signUp.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: GetStarted(),
  )
);

class GetStarted extends StatefulWidget {
  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
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
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SvgPicture.asset(
          rider,
          placeholderBuilder: (context) => CircularProgressIndicator(),
          width: 200.0,
          ),
          SvgPicture.asset(
          logo,
          placeholderBuilder: (context) => CircularProgressIndicator(),
          width: 200.0,
          ),
          SizedBox(
            height: 50,
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
            },
            child: Text(
                'SIGN IN',
                style: TextStyle(color: Colors.white, fontSize: 17.0, fontWeight: FontWeight.w500)
            ),
        ),
          ),
          SizedBox(
            height: 5,
          ),
          Text('Forgot password?',
              style: TextStyle(fontSize: 16, color: Color(0xff607aa3)),
          ),
          SizedBox(
            height: 50,
          ),
          Text('Dont have an account yet?',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(
            height: 5,
          ),
          SizedBox(
            width: 300.0,
            height: 42.0,
            child: RaisedButton(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Color(0xff282662)),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    color: Color(0xffede5f2),
                    onPressed: () async {
                      Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SignUp()),
                              );
                    },
                    child:
                    Text(
                            'CREATE ACCOUNT',
                            style: TextStyle(color: Color(0xff282662), fontSize: 17.0,)
                        )
                ),
          ),
          SizedBox(
            height: 90,
          ),
        ],
      ),
    ),
    );
  }
}
