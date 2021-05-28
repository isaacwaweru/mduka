import 'package:flutter/material.dart';
import 'signUp.dart';
import 'dashboard.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool monVal = false;
  bool tuVal = false;
  bool wedVal = false;
  bool _isHidden = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
      height: double.infinity,
      color: Color(0xffede5f2),
      child: ListView(
        children: [
          Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: 150,
          ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(35.0, 0, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            Text('Welcome back',
              style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w900, color: Color(0xff282662) ),
            ),
          ],),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(35, 0, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            Text('Sign in to start sending your packages',
              style: TextStyle(fontSize: 13, color: Color(0xff282662)),
            ),
          ],),
        ),
        SizedBox(
            height: 20,
          ),
            SizedBox(
            height: 10,
          ),
            SizedBox(
            width: 300.0,
            height: 50.0,
            child: TextField(
              style: TextStyle(fontSize: 14, color: Color(0xff282662)),
              decoration: InputDecoration(
                prefixIcon:   new IconTheme(
              data: new IconThemeData(
                  color: Color(0xffa8a1bb)), 
              child: new Icon(Icons.email_outlined),
              ),
                hintText: "Email",
                hintStyle: TextStyle(color: Color(0xffa8a1bb)),
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(borderSide: const BorderSide(color: Color(0xffede5f2), width: 0.0),borderRadius: const BorderRadius.all(
          const Radius.circular(5.0),
        ),),
                  border: OutlineInputBorder(borderSide: BorderSide(color: Color(0xff282662), width: 1.0), borderRadius: const BorderRadius.all(
      const Radius.circular(5.0),
        ),),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
            SizedBox(
            width: 300.0,
            height: 50.0,
            child: TextField(
              obscureText: _isHidden,
              style: TextStyle(fontSize: 14, color: Color(0xff282662)),
              decoration: InputDecoration(
                prefixIcon:   new IconTheme(
              data: new IconThemeData(
                  color: Color(0xffa8a1bb)), 
              child: new Icon(Icons.lock_open_outlined),
              ),
                hintText: "Password",
                hintStyle: TextStyle(color: Color(0xffa8a1bb)),
                filled: true,
                suffix: InkWell(
                    onTap: _togglePasswordView,
                    child: Icon( Icons.visibility),
                ),
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(borderSide: const BorderSide(color: Color(0xffede5f2), width: 0.0),borderRadius: const BorderRadius.all(
          const Radius.circular(5.0),
        ),),
                  border: OutlineInputBorder(borderSide: BorderSide(color: Color(0xff282662), width: 1.0), borderRadius: const BorderRadius.all(
      const Radius.circular(5.0),
        ),),
              ),
            ),
          ),
         SizedBox(
            height: 20,
          ),
        // Text('I agree to the terms & conditions.'),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
          child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          Theme(
                          child: Checkbox(
                            value: tuVal,
                            onChanged: (bool value) {
                              setState(() {
                                tuVal = value;
                              });
                            },
                          ),
                          data: ThemeData(
                            unselectedWidgetColor: Color(0xff282662), // Your color
                          ),
                        ),
                        Text(
                            'Remember me',
                            style: TextStyle(color: Color(0xff736d94), fontSize: 14.0, fontWeight: FontWeight.bold)
                        ),
                        ],),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 30.0, 0),
                          child: Text(
                              'Forgot password?',
                              style: TextStyle(color: Color(0xff282662), fontSize: 14.0, fontWeight: FontWeight.bold)
                          ),
                        )
                      ],
                    ),
                  ),
        ),
         SizedBox(
            height: 20,
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
                'SIGN IN',
                style: TextStyle(color: Colors.white, fontSize: 17.0, fontWeight: FontWeight.w500)
            ),
        ),
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
          )
      ],),
        ],
      )
      ),
    );
  }
  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}