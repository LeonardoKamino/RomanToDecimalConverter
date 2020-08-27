import 'package:flutter/material.dart';
import 'package:roman_to_decimal/constants.dart';


class Button extends StatelessWidget {
  final String value;
  final  Function onTap;
  final Color  color;
  final IconData icon;
  final Function onLongPressed;
  final int flex;

  Button({this.onTap, this.icon,this.value, this.color, this.onLongPressed, this.flex});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex != null ? flex : 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [ //background color of box
              BoxShadow(
                color: Color(0xAA555555),
                blurRadius: 3.0, // soften the shadow
                spreadRadius: 1.0, //extend the shadow
                offset: Offset(
                  2.0, // Move to right 10  horizontally
                  2.0, // Move to bottom 10 Vertically
                ),
              )
            ],
          ),
          child: FlatButton(
            onLongPress:onLongPressed ,
            onPressed: onTap,
            child: value != null ? Text(
              value,
              style: kButtonDigitTextStyle,
            ) : Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(
                icon, 
                color: kWhiteColor,
                size: 40,
              ),
            )
          ),
        ),
      ),
    );
  }
}

