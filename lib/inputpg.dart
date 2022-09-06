import 'dart:ui';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'results_page.dart';
import 'brain.dart';

const containerColor = Color(0xFF1D1E33);
const passiveContainerColor = Color(0xFF111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor = passiveContainerColor;
  Color femaleColor = passiveContainerColor;
  int weight = 60;
  int age = 20;
  int height = 170;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR', style: TextStyle(fontWeight: FontWeight.w900),)),
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
          // Neeche waale dabbe
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                      containerColor,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Weight',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Color(0xFF8D8E98),
                            ),
                          ),
                          Text(
                            weight.toString(),
                            style: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                backgroundColor: Color(0xFF4C4F5E),
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              FloatingActionButton(
                                backgroundColor: Color(0xFF4C4F5E),
                                onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                },
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),


                            ],
                          )

                        ],
                      )),
                ),
                Expanded(
                  child: ReusableCard(
                      containerColor,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Age',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Color(0xFF8D8E98),
                            ),
                          ),
                          Text(
                            age.toString(),
                            style: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                backgroundColor: Color(0xFF4C4F5E),
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),

                              FloatingActionButton(
                                backgroundColor: Color(0xFF4C4F5E),
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),

                            ],
                          )

                        ],
                      )),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: (){
              Brain results = Brain(height, weight);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultsPage(results.GetResult(), results.Calculate(), results.getInterpretation())));
            },
            child: Container(
              child: Center(
                child: Text('CALCULATE', style:
                    TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 25.0,
                    )
                  ,),
              ),
              color: Color(0xFFEB1555),
              height: 80.0,
              width: double.infinity,
              margin: EdgeInsets.only(top: 10.0),
            ),
          )
        ],
      ),
    );
  }
}

// Color(0xFF1D1E33)
