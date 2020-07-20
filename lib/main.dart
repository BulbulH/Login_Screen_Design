import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'signInPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]); // hide status bar
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          //background image
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              "assets/bg.jpg",
              fit: BoxFit.cover,
            ),
          ),

          //filter for bottom button
          Container(
           height: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                gradient: LinearGradient(
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    colors: [
                      Colors.grey.withOpacity(0.0),
                      Colors.black.withOpacity(0.5),
                    ],
                    stops: [
                      0.35,
                      1.0
                    ])),
          ),
          //filter for top text
          Container(
            height: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                gradient: LinearGradient(
                    begin: FractionalOffset.bottomCenter,
                    end: FractionalOffset.topCenter,
                    colors: [
                      Colors.grey.withOpacity(0.0),
                      Colors.black.withOpacity(0.5),
                    ],
                    stops: [
                      0.75,
                      1.0
                    ])),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              //top title
              Container(
                margin: EdgeInsets.only(top: 122),
                child: Center(
                  child: Text(
                    "Songsoptok",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 33,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              //sign in sign up button
              Container(
                margin: const EdgeInsets.only(left: 21, right: 21, bottom: 24),
                child: Column(
                  children: <Widget>[
                    CustomButton(
                      title: "Sign In",
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => signInPage()));
                      },
                      borderColor: Colors.white,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    CustomButton(
                      title: "Sign Up",
                      onPressed: () {},
                      borderColor: Colors.red,
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key key,
    @required this.onPressed,
    @required this.borderColor,
    @required this.title,
  }) : super(key: key);

  final onPressed, borderColor, title;
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 44,
      minWidth: double.infinity,
      child: FlatButton(
        child: Text(
          "Sign In",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
            side: BorderSide(color: borderColor)),
        onPressed: onPressed,
      ),
    );
  }
}
