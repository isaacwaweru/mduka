import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
        Text('Get started'),
        Text('Kindly fill in the details below to create an account'),
        Text(''),
        Text(''),
        Text(''),
        Text('I agree to the terms & conditions.'),
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
                'CREATE ACCOUNT',
                style: TextStyle(color: Colors.white, fontSize: 17.0, fontWeight: FontWeight.w500)
            ),
        ),
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
                      
                    },
                    child:
                    Text(
                            'SIGN IN',
                            style: TextStyle(color: Color(0xff282662), fontSize: 17.0,)
                        )
                ),
          ),
      ],),
      ),
    );
  }
}