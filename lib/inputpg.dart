import 'dart:ui';
import 'package:flutter/material.dart';

const containerColor = Color(0xFF1D1E33);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(containerColor),
                ),
                Expanded(
                  child: ReusableCard(containerColor),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(containerColor),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(containerColor),
                ),
                Expanded(
                  child: ReusableCard(
                    containerColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Color(0xFFEB1555),
            height: 80.0,
            width: double.infinity,
            margin: EdgeInsets.only(top: 10.0),
          )
        ],
      ),
    );
  }
}

// Color(0xFF1D1E33)

// as it was repeting so we extracted it out
class ReusableCard extends StatelessWidget {
  ReusableCard(this.colour);

  // use final in case of the color property it makes this property immutable
  final Color colour; // created a temp color variable
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
