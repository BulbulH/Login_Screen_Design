import 'package:flutter/material.dart';

class signInPage extends StatelessWidget {
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


          Center(
            child: Container(
              height: 390,
              margin: EdgeInsets.all(35),
              decoration: BoxDecoration(
                border: Border.all(width: 3.0, color: Colors.white),
                borderRadius: BorderRadius.all(Radius.circular(
                        15.0) //                 <--- border radius here
                    ),
              ),
              child: Container(
                padding: EdgeInsets.only(top: 92, left: 20, right: 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 40,
                        child: TextField(
                          decoration: new InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 0),
                              border: new OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(25.0),
                                ),
                              ),
                              filled: true,
                              hintStyle: new TextStyle(color: Colors.grey[800]),
                              hintText: "Email",
                              fillColor: Colors.white),
                          style: TextStyle(height: 1.50, color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Container(
                        height: 40,
                        child: TextField(
                          decoration: new InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 0),
                              border: new OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(25.0),
                                ),
                              ),
                              filled: true,
                              hintStyle: new TextStyle(color: Colors.grey[800]),
                              hintText: "Email",
                              fillColor: Colors.white),
                          style: TextStyle(height: 1.50, color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: 73,
                      ),
                      ButtonTheme(
                        height: 40,
                        minWidth: double.infinity,
                        child: FlatButton(
                          color: Color(0xffF10088),
                          child: Text(
                            "Sign In",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      InkWell(
                        onTap: (){
                          //forgot password clicked action
                          print("forgot password clicked");
                        },
                        child: Text("Forgot Password",
                        style: TextStyle(
                          color: Colors.white
                        ),),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
