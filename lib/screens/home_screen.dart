import 'package:flutter/material.dart';
import 'package:my_workout/components/timerDisplay.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            // isDismissible: false,
          );
        },
        backgroundColor: Colors.blue,
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Text(
          'My Workout Routine',
          style: TextStyle(
            fontFamily: 'Quantico',
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Text('Text'),
        ),
      ),
    );
  }
}
