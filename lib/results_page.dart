import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'inputpg.dart';
class ResultsPage extends StatelessWidget {

  ResultsPage(this.status, this.calculatedBMI, this.paragraph);

  final String status;
  final String calculatedBMI;
  final String paragraph;
  static const containerColor = Color(0xFF1D1E33);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // to prevent the displaced title
        centerTitle: true,
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(fontWeight: FontWeight.w900),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
            child: Text(
              'Your Result',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          )),
          Expanded(
              flex: 5,
              child: ReusableCard(containerColor, Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(status, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25.0, color: Colors.green),),
                  Text(calculatedBMI, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 70)),
                  Text(paragraph, style: TextStyle(fontSize: 20), textAlign: TextAlign.center,),

                ],
              ))
          ),
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              child: Center(
                child: Text('RE-CALCULATE', style:
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
