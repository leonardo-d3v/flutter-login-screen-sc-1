import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_screen/app_colors.dart';
import 'package:login_screen/widgets/widgets.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  _backgroundGradient() {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [AppColors.bgTopColor, AppColors.bgBottomColor])),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        _backgroundGradient(),
        SafeArea(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(
                  "Login",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      AppTextField(
                        hint: "Enter your email",
                        icon: Icons.person_outline,
                      ),
                      SizedBox(height: 20),
                      AppTextField(
                        hint: "Enter your password",
                        icon: Icons.person_outline,
                        isPassword: true,
                      ),
                      SizedBox(height: 40),
                      AppButton(
                        title: "Login",
                        onPressed: () {
                          print("Login");
                        },
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Forgot your password?",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(color: Colors.white, width: 60, height: 4),
                    Text(
                      "or connect with",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Container(color: Colors.white, width: 60, height: 4),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Expanded(
                      child: AppButton(
                        icon: FaIcon(
                          FontAwesomeIcons.facebookF,
                          color: Colors.white,
                        ),
                        title: "Facebook",
                        color: AppColors.facebookColor,
                        onPressed: () {
                          print("login via facebbok");
                        },
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                        child: AppButton(
                      icon:
                          FaIcon(FontAwesomeIcons.google, color: Colors.white),
                      title: "Google",
                      color: Colors.red,
                      onPressed: () {
                        print("login via Google");
                      },
                    ))
                  ],
                ),
                Row(children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(width: 20),
                  GestureDetector(
                    child: Text("Sign up",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold)),
                    onTap: () {
                      print("Sign up");
                    },
                  )
                ])
              ],
            )),
          ),
        )
      ]),
    );
  }
}
