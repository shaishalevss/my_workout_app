import 'package:flutter/material.dart';
import 'package:my_workout/components/plan_selector_button.dart';
import 'package:my_workout/constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xFFDC143C),
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings,),
            onPressed: () => Navigator.pushNamed(context, 'settings'),
          )
        ],
        title: Center(
          child: Text(
            'My Workout Routine',
            style: kAppBarTextStyle,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            planSelectorButton(
                text: 'PLAN A',
                route: () => Navigator.pushNamed(context, 'planA')),
            planSelectorButton(
                text: 'PLAN B',
                route: () => Navigator.pushNamed(context, 'planB')),
            planSelectorButton(
                text: 'SELECT AREA',
                route: () => Navigator.pushNamed(context, 'selectArea')),
            Container(
              // height: 70.0,
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1, vertical: screenHeight * 0.05),
              child: Image.asset('images/gym2.jpg'),
            ),
          ],
        ),
      ),
    );
  }
}
