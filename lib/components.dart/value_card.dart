import 'package:flutter/material.dart';
import 'package:roman_to_decimal/constants.dart';


class ValueCard extends StatelessWidget {
  ValueCard({this.value, this.title});

  final String value;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10 ),
      padding: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 0),
      decoration: BoxDecoration(
        color: kValueCardBackgroundcolor,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: kValueCardTitle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                value,
                style:kNumberTextStyle, 
              ),
            ],
          ),
        ],
      ),
    );
  }
}