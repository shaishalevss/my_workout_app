import 'package:flutter/material.dart';
import 'dart:async';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 4;
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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              (_counter > 0)
                  ? Text('')
                  : Text(
                      'DONE!',
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.yellow,
                      ),
                    ),
              Container(
                child: Text(
                  getTime(),
                  style: TextStyle(fontSize: 50.0),
                ),
              ),
              FlatButton(
                child: Text(
                  'Start Countdown',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
                color: Colors.green,
                disabledColor: Colors.red,
                onPressed: () {
                  print('GO');
                  _startTimer();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
