import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Widget/logoContainer.dart';
import 'package:comunitytracker/src/signup.dart';

import 'home.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  Widget _entryField(String title, {bool isPassword = false}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
              obscureText: isPassword,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: Color(0xfff3f3f4),
                  filled: true))
        ],
      ),
    );
  }

  Widget _submitButton() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Home()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 13),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.green.withAlpha(100),
                  offset: Offset(2, 4),
                  blurRadius: 8,
                  spreadRadius: 2)
            ],
            color: Colors.white),
        child: Text(
          'Login',
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20, color: Colors.green),
        ),
      ),
    );
  }


  Widget _createAccountLabel() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Don\'t have an account ?',
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignUpPage()));
            },
            child: Text(
              'Register',
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 13,
                  fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }


  Widget _userIdWidget() {
    return Column(
      children: <Widget>[
        _entryField("User ID"),
        _entryField("Password", isPassword: true),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: SizedBox(),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 200.0,

                  child: LogoContainer(),
                ),
                SizedBox(
                  height: 10,
                ),
                _userIdWidget(),
                SizedBox(
                  height: 20,
                ),
                _submitButton(),

                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  alignment: Alignment.centerRight,
                  child: Text('Forgot Password ?',
                      style:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w500,color: Colors.redAccent)),
                ),

                Expanded(
                  flex: 2,
                  child: SizedBox(),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: _createAccountLabel(),
          ),

        ],
      ),
    );
  }
}