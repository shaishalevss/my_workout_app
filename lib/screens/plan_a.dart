import 'package:flutter/material.dart';
import 'package:my_workout/models/drill_data.dart';
import 'package:my_workout/widgets/drills_list.dart';
import 'package:provider/provider.dart';

class PlanAScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text('Plan A'),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/planbackground.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: DrillsList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
