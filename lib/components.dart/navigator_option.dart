import 'package:flutter/material.dart';
import 'package:roman_to_decimal/constants.dart';

class NavigatorOption extends StatelessWidget {
  
  final String text;
  final Choice currentChoice;
  final Choice optionChoice;
  final Function onTap;
  
  NavigatorOption({this.optionChoice, this.currentChoice, this.onTap, this.text});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Text(
        text, 
        style: TextStyle(
          color: currentChoice == optionChoice? kButtomLightRedColor : kDisabledWhiteColor, 
        ),
      ),
      onTap: onTap,
    );
  }
}