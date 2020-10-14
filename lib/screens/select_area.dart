import 'package:flutter/material.dart';
import 'package:my_workout/constants.dart';

class SelectAreaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text('Select Area', style: kAppBarTextStyle,),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/planbackground.jpg"),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
