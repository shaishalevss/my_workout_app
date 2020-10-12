import 'package:flutter/material.dart';

class SelectAreaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text('Select Area'),
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
