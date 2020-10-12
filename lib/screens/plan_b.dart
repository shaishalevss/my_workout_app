import 'package:flutter/material.dart';


class PlanBScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Image.asset('images/lion.jpg'),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text('Plan B'),
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
