import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/login.dart';
import 'package:project/signup.dart';

//starting point for all flutter apps.
void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance =
        ScreenUtil(width: 750, height: 1334, allowFontScaling: true);
    return new Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(left: 160, top: 20.0),
                  child: Image.asset("images/login.png")),
            ],
          ),
          SingleChildScrollView(
              child: Padding(
            padding: EdgeInsets.only(left: 28.0, right: 28.0, top: 60.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: ScreenUtil.getInstance().setHeight(250),
                ),
                Login(),
                SizedBox(height: ScreenUtil.getInstance().setHeight(40)),
                InkWell(
                    child: Container(
                  width: ScreenUtil.getInstance().setWidth(330),
                  height: ScreenUtil.getInstance().setHeight(100),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xFFD16BA5), Color(0xFF26A0DA),Color(0xFF24C6DC)]),
                      borderRadius: BorderRadius.circular(6.0),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xFF6078ea).withOpacity(.3),
                            offset: Offset(0.0, 8.0),
                            blurRadius: 8.0)
                      ]),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {},
                      child: Center(
                        child: Text("SIGNIN",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                letterSpacing: 1.0)),
                      ),
                    ),
                  ),
                )),
                SizedBox(
                  height: ScreenUtil.getInstance().setHeight(210),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "New User? ",
                      style: TextStyle(
                          fontSize: ScreenUtil.getInstance().setSp(35)),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUp()));
                      },
                      child: Text("SignUp",
                          style: TextStyle(
                              color: Colors.blue[900],
                              fontFamily: "Poppins-Italic",
                              fontSize: ScreenUtil.getInstance().setSp(35))),
                    )
                  ],
                )
              ],
            ),
          )),
        ],
      ),
    );
  }
}
}
