import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_screen/app_colors.dart';

class AppButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  final Color color;
  final FaIcon icon;

  const AppButton(
      {Key key,
      @required this.title,
      @required this.onPressed,
      this.color = AppColors.primaryColor,
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      onPressed: onPressed,
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
      child: icon != null
          ? Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                icon,
                Text(
                  title,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )
              ],
            )
          : Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
    );
  }
}
