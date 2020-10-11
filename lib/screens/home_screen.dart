import 'package:flutter/material.dart';
import 'dart:async';
import 'package:my_workout/components/timerDisplay.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 65;
  Timer _timer;

  String getTime() {
    int minutes = 0;
    int seconds = _counter;

    if (_counter > 59) {
      minutes = (_counter / 60).truncate();
      seconds = (_counter - (minutes * 60)).truncate();
    }
    String minutesStr = minutes.toString().padLeft(2, '0');
    String secondsStr = seconds.toString().padLeft(2, '0');
    String all = '$minutesStr:$secondsStr';
    return all;
  }

  int getCounter() {
    return _counter;
  }

  void _startTimer() {
    _counter = getCounter();

    if (_timer != null) {
      _timer.cancel();
      return;
    }

    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
          _counter--;
        } else {
          _timer.cancel();
        }
      });
    });
  }

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
