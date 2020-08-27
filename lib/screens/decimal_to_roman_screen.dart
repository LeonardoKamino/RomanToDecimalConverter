import 'package:flutter/material.dart';
import 'package:roman_to_decimal/components.dart/button.dart';
import 'package:roman_to_decimal/constants.dart';
import 'package:roman_to_decimal/components.dart/value_card.dart';
import 'package:roman_to_decimal/decimal_to_roman_brain.dart';


class DecimalToRomanScreen extends StatefulWidget {
  @override
  _DecimalToRomanScreenState createState() => _DecimalToRomanScreenState();
}

class _DecimalToRomanScreenState extends State<DecimalToRomanScreen> {

  DecimalToRomanBrain brain = DecimalToRomanBrain();


  Function setStateHelper(Function func, int value){
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
        children: [
          ValueCard(
            value: brain.decimal.toString(),
            title: 'Decimal',
          ),
          ValueCard(
            value: brain.roman,
            title: 'Roman',
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Button(
                      onTap: setStateHelper(brain.addDigit, 1),
                      value: '1',
                      color: kButtomLightRedColor,
                    ),
                    Button(
                      onTap: setStateHelper(brain.addDigit, 2),
                      value: '2',
                      color: kButtomLightRedColor,
                    ),
                    Button(
                      onTap: setStateHelper(brain.addDigit, 3 ),
                      value: '3',
                      color: kButtomLightRedColor,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Button(
                      onTap: setStateHelper(brain.addDigit, 4),
                      value: '4',
                      color: kButtomLightRedColor,
                    ),
                    Button(
                      onTap: setStateHelper(brain.addDigit, 5),
                      value: '5',
                      color: kButtomLightRedColor,
                    ),
                    Button(
                      onTap: setStateHelper(brain.addDigit, 6),
                      value: '6',
                      color: kButtomLightRedColor,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Button(
                      onTap: setStateHelper(brain.addDigit, 7),
                      value: '7',
                      color: kButtomLightRedColor,
                    ),
                    Button(
                      onTap: setStateHelper(brain.addDigit, 8),
                      value: '8',
                      color: kButtomLightRedColor,
                    ),
                    Button(
                      onTap: setStateHelper(brain.addDigit, 9),
                      value: '9',
                      color: kButtomLightRedColor,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Button(
                      flex: 2,
                      onTap: setStateHelper(brain.addDigit, 0),
                      value: '0',
                      color: kButtomLightRedColor,
                    ),
                    Button(
                      onTap: (){setState(() {
                        brain.deleteDigit();
                      });},
                      onLongPressed: (){setState(() {
                        brain.reset();
                      });},
                      icon: Icons.backspace,
                      color: kButtomDarkerRedColor,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}