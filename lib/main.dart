import 'package:flutter/material.dart';
import 'package:bmi_calculator/inputpg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // Define the default brightness and colors.
        // brightness: Brightness.dark,
        // primaryColor: Color(0xFF0A0E21),

        primarySwatch: Colors.deepPurple,

        // now we'll create the text theme
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Colors.white,
          )
        ),

        // this is the app bar theme
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF0A0E21),
        ),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
    );
  }
}

