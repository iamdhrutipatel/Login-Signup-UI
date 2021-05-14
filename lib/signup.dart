import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:passwordfield/passwordfield.dart';
import 'package:project/main.dart';

class SignUp extends StatelessWidget {
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
                  padding: EdgeInsets.only(left: 90.0, top: 30.0, right: 90.0),
                  child: Image.asset("images/signup.png")),
            ],
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 28.0, right: 28.0, top: 60.0),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(269),
                  ),
                  Container(
                    width: double.infinity,
                    height: ScreenUtil.getInstance().setHeight(600),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.blueGrey[100],
                              offset: Offset(0.0, 0.15),
                              blurRadius: 15.0),
                          BoxShadow(
                              color: Colors.blueGrey[100],
                              offset: Offset(0.0, -10.0),
                              blurRadius: 10.0),
                        ]),
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("             New User?          ",
                              style: TextStyle(
                                  fontSize: ScreenUtil.getInstance().setSp(50),
                                  color: Colors.black87,
                                  letterSpacing: .6)),
                          SizedBox(
                            height: ScreenUtil.getInstance().setHeight(20),
                          ),
                          Text(
                            "Username",
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20,
                            ),
                          ),
                          TextField(
                              decoration: InputDecoration(
                            hintText: "username",
                            hintStyle: TextStyle(
                                color: Colors.blueGrey, fontSize: 15.0),
                          )),
                          SizedBox(
                            height: ScreenUtil.getInstance().setHeight(20),
                          ),
                          Text(
                            "Email ID",
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20,
                            ),
                          ),
                          TextField(
                            decoration: InputDecoration(
                                hintText: "abc@gmail.com",
                                hintStyle: TextStyle(
                                    color: Colors.blueGrey, fontSize: 15.0)),
                          ),
                          SizedBox(
                            height: ScreenUtil.getInstance().setHeight(20),
                          ),
                          Text(
                            "Password",
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 3),
                            child: PasswordField(
                              hintText: 'password',
                              hintStyle: TextStyle(
                                  color: Colors.blueGrey, fontSize: 15.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                            height: ScreenUtil.getInstance().setHeight(40)),
                        InkWell(
                            child: Container(
                          width: ScreenUtil.getInstance().setWidth(330),
                          height: ScreenUtil.getInstance().setHeight(100),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Color(0xFFEDE574),
                                Color(0xFFEDDE5D),
                                Color(0xFFF09819)
                              ]),
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
                                child: Text("SIGNUP",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        letterSpacing: 1.0)),
                              ),
                            ),
                          ),
                        )),
                        SizedBox(
                            height: ScreenUtil.getInstance().setHeight(130)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Back to ",
                              style: TextStyle(
                                  fontSize: ScreenUtil.getInstance().setSp(35)),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MyApp()));
                              },
                              child: Text("Login",
                                  style: TextStyle(
                                      color: Colors.blue[900],
                                      fontFamily: "Poppins-Italic",
                                      fontSize:
                                          ScreenUtil.getInstance().setSp(35))),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
