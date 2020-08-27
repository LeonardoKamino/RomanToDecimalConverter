import 'package:flutter/material.dart';
import 'package:roman_to_decimal/constants.dart';
import 'package:roman_to_decimal/roman_to_decimal_brain.dart';
import 'package:roman_to_decimal/components.dart/value_card.dart';
import 'package:roman_to_decimal/components.dart/button.dart';

class RomanToDecimalScreen extends StatefulWidget {
  @override
  _RomanToDecimalScreenState createState() => _RomanToDecimalScreenState();
}

class _RomanToDecimalScreenState extends State<RomanToDecimalScreen> {

  RomanToDecimalBrain brain = RomanToDecimalBrain();

  Function setStateHelper(Function func, String value){
    return (){
      setState(() {
        func(value);
      });
    };
  }


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ValueCard(
            value: brain.romanNumber,
            title: 'Roman',
          ),
          ValueCard(
            value: brain.decimalNumber,
            title: 'Decimal',
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Button(
                        value: 'I',
                        onTap: setStateHelper(brain.addDigit, 'I'),
                        color: kButtomLightRedColor,
                      ),
                      SizedBox(
                        width: kWidthBetweenButtons,
                      ),
                      Button(
                        value: 'V',
                        onTap: setStateHelper(brain.addDigit, 'V'),
                        color: kButtomLightRedColor,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Button(
                        value: 'X',
                        onTap: setStateHelper(brain.addDigit, 'X'),
                        color: kButtomLightRedColor,
                      ),
                      SizedBox(
                        width: kWidthBetweenButtons,
                      ),
                      Button(
                        value: 'L',
                        onTap: setStateHelper(brain.addDigit, 'L'),
                        color: kButtomLightRedColor,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Button(
                        value: 'C',
                        onTap: setStateHelper(brain.addDigit, 'C'),
                        color: kButtomLightRedColor,
                      ),
                      SizedBox(
                        width: kWidthBetweenButtons,
                      ),
                      Button(
                        value: 'D',
                        onTap: setStateHelper(brain.addDigit, 'D'),
                        color: kButtomLightRedColor,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Button(
                        value: 'M',
                        onTap: setStateHelper(brain.addDigit, 'M'),
                        color: kButtomLightRedColor,
                      ),
                      SizedBox(
                        width: kWidthBetweenButtons,
                      ),
                      Button(
                        icon: Icons.backspace,
                        onTap: (){setState(() {
                          brain.deleteDigit();
                        });
                        },
                        onLongPressed: (){setState(() {
                          brain.reset();
                        });},
                        color: kButtomDarkerRedColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

