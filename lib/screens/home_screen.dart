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
            isDismissible: false,
          );
        },
        backgroundColor: Colors.blue,
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black54,
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
            Container(
              width: double.infinity,
              height: 90.0,
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
              ),
              child: Text('Plan A', textAlign: TextAlign.center,
              ),
            ),Container(
              width: double.infinity,
              height: 90.0,
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
              ),
              child: Text('Plan B', textAlign: TextAlign.center,
              ),
            ),Container(
              width: double.infinity,
              height: 90.0,
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
              ),
              child: Text('Select Area', textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
