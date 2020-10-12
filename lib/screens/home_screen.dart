import 'package:flutter/material.dart';
import 'package:my_workout/components/timerDisplay.dart';
import 'package:my_workout/constants.dart';
import 'package:my_workout/components/plan_selector_button.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDC143C),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: TimerCountDown(),
              ),
            ),
            isDismissible: false,
          );
        },
        backgroundColor: Colors.blue,
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'My Workout Routine',
            style: TextStyle(
              fontFamily: 'Quantico',
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            planSelectorButton(text: 'PLAN A', route: () => Navigator.pushNamed(context, 'planA')),
            planSelectorButton(text: 'PLAN B',route: () => Navigator.pushNamed(context, 'planB')),
            planSelectorButton(text: 'SELECT AREA',route: () => Navigator.pushNamed(context, 'selectArea')),
            // Image.asset('images/gym.jpg'),
          ],
        ),
      ),
    );
  }
}
