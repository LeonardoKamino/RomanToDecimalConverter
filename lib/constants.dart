import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum Choice{
    decToRoman,
    romanToDec,
  }


const kNavigatorBackgroundColor = Color(0xAACAC198);
const kDisabledWhiteColor = Color(0x88EDEDED);
const kBackgroundColor = Color(0xFFF6ECC8);
const kButtomLightRedColor = Color(0xAAC21818);
const kButtomDarkerRedColor = Color(0xDD7F2122);
const kWhiteColor = Color(0xFFDDDDDD);
const kValueCardBackgroundcolor = Color(0x90E1E1E1);
const kWidthBetweenButtons = 25.0;

var kNumberTextStyle = GoogleFonts.quattrocento(
  textStyle: TextStyle(
    color: Colors.white,
    fontSize: 30,
  ),
);

var kNumberOver4000TextStyle = GoogleFonts.quattrocento(
  textStyle: TextStyle(
    color: Colors.white,
    fontSize: 30,
    decoration: TextDecoration.overline,
  ),
);

var kButtonDigitTextStyle = GoogleFonts.quattrocento(
    textStyle: TextStyle(
    color: Colors.white,
    fontSize: 50,
  ),
);



var kValueCardTitle = GoogleFonts.raleway(
  textStyle: TextStyle(
    color: Colors.white,
    fontSize: 20,
  ),
);