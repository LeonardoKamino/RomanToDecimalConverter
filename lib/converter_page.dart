import 'package:flutter/material.dart';
import 'components.dart/navigator_option.dart';
import 'constants.dart';
import 'screens/roman_to_decimal_screen.dart';
import 'screens/decimal_to_roman_screen.dart';
  
class ConverterPage extends StatefulWidget {
  @override
  _ConverterPageState createState() => _ConverterPageState();
}

class _ConverterPageState extends State<ConverterPage> {
  Choice selectedChoice = Choice.decToRoman;

  Function changeCurrentScreen(Choice choice){
    return (){
      setState(() {
        if (selectedChoice != choice){
          selectedChoice = choice;
        }  
      });
    };
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                width: 210,
                decoration: BoxDecoration(
                  color: kNavigatorBackgroundColor,
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    NavigatorOption(
                      currentChoice: selectedChoice,
                      text: 'Dec to Rom',
                      optionChoice: Choice.decToRoman,
                      onTap: changeCurrentScreen(Choice.decToRoman),
                    ),
                    NavigatorOption(
                      currentChoice: selectedChoice,
                      text: 'Rom to Dec',
                      optionChoice: Choice.romanToDec,
                      onTap: changeCurrentScreen(Choice.romanToDec),
                    ),
                ],
              ),
              ),
              selectedChoice == Choice.decToRoman ? DecimalToRomanScreen() : RomanToDecimalScreen()
          ],),
        ) ,
      ),
    );
  }
}

