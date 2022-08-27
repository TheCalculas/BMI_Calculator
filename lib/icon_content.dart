import 'package:flutter/material.dart';



class iconWiget extends StatelessWidget {


  final IconData ico;
  final String txt;
  iconWiget(this.ico, this.txt);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            ico,
            color: Colors.white,
            size: 80.0,
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            txt,
            style: TextStyle(
              fontSize: 18.0,
              color: Color(0xFF8D8E98),
            ),
          )
        ],
      ),
    );
  }
}