import 'dart:ui';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const containerColor = Color(0xFF1D1E33);
const passiveContainerColor = Color(0xFF111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor = passiveContainerColor;
  Color femaleColor = passiveContainerColor;
  int height = 170;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment:
            CrossAxisAlignment.stretch, // stretches all the childrens
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                      onTap: () {
                        setState(() {
                          maleColor = containerColor;
                          femaleColor = passiveContainerColor;
                        });
                      },
                      child: ReusableCard(
                        maleColor,
                        iconWiget(FontAwesomeIcons.mars, "Male"),
                      )),
                ),
                Expanded(
                  child: GestureDetector(
                      onTap: () {
                        setState(() {
                          femaleColor = containerColor;
                          maleColor = passiveContainerColor;
                        });
                      },
                      child: ReusableCard(
                        femaleColor,
                        iconWiget(FontAwesomeIcons.venus, "Female"),
                      )),
                ),
              ],
            ),
          ),
          // Main Slider
          Expanded(
              child: ReusableCard(
                  containerColor,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Height',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Color(0xFF8D8E98),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            height.toString(),
                            style: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Text(
                            'cm',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Color(0xFF8D8E98),
                            ),
                          )
                        ],
                      ),
                      Slider(
                        value: height.toDouble(),
                        min: 120,
                        max: 220,
                        // divisions: 1,
                        activeColor: Color(0xFFEB1555),
                        label: height.toString(),
                        onChanged: (double value) {
                          setState(() {
                            height = value.round();
                          });
                        },
                      ),
                    ],
                  ))),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    containerColor,
                    iconWiget(FontAwesomeIcons.font, "ff"),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    containerColor,
                    iconWiget(FontAwesomeIcons.font, "sample"),
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
