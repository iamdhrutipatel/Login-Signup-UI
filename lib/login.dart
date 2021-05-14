import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:passwordfield/passwordfield.dart';

class Login extends StatelessWidget {
  var controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: double.infinity,
      height: ScreenUtil.getInstance().setHeight(540),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
                color: Colors.black26,
                offset: Offset(0.0, 0.15),
                blurRadius: 15.0),
            BoxShadow(
                color: Colors.black26,
                offset: Offset(0.0, -10.0),
                blurRadius: 10.0),
          ]),
      child: Padding(
        padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Login",
                  style: TextStyle(
                      fontSize: ScreenUtil.getInstance().setSp(50),
                      fontFamily: "Poppins-Bold",
                      color: Colors.blue[900],
                      letterSpacing: .6)),
              SizedBox(
                height: ScreenUtil.getInstance().setHeight(20),
              ),
              Text(
                "Username",
                style: TextStyle(
                  color: Colors.blue[900],
                  fontSize: 20,
                ),
              ),
              new TextField(
                controller: controller,
                decoration: InputDecoration(
                  hintText: "username",
                  hintStyle: TextStyle(color: Colors.blueGrey, fontSize: 15.0)
                ),
              ),
              SizedBox(
                height: ScreenUtil.getInstance().setHeight(35),
              ),
              Text(
                "Password",
                style: TextStyle(
                  color: Colors.blue[900],
                  fontSize: 20,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 3),
                child: PasswordField(
                  hintText: 'password',
                  hintStyle: TextStyle(color: Colors.blueGrey, fontSize: 15.0),
                ),
              ),
              SizedBox(
                height: ScreenUtil.getInstance().setHeight(35),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
                Text(
                  "Forget Password?",
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontFamily: "Poppins-Italic",
                    fontSize: 15,
                  ),
                )
              ]),
            ]),
      ),
    );
  }
}
}
