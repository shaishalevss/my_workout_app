import 'package:flutter/material.dart';
import 'dart:async';
import 'package:my_workout/constants.dart';

class TimerCountDown extends StatefulWidget {
  @override
  _TimerCountDownState createState() => _TimerCountDownState();
}

class _TimerCountDownState extends State<TimerCountDown> {
  int _counter = kTimerTime;
  Timer _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

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

  //check tomorrow
  void _startTimer() {
    _counter = getCounter();

    if (_timer != null) {
      _timer.cancel();
      _timer = null;
    } else {
      _timer = Timer.periodic(Duration(seconds: 1), (timer) {
        setState(() {
          if (_counter > 0) {
            _counter--;
          } else {
            _timer.cancel();
            Navigator.pop(context);
          }
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(22.0),
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          )),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            (_counter > 0)
                ? Text(
                    'Time To Rest!',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )
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
                'Stop/Continue',
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
              color: Colors.green,
              disabledColor: Colors.red,
              onPressed: () {
                _startTimer();
              },
            )
          ],
        ),
      ),
    );
  }
}
