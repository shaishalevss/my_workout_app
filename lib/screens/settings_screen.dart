import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;
import 'package:my_workout/constants.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

  String currentTime = '120';


  //dropdown for android
  DropdownButton<String> androidDropdownButton(){
    List<DropdownMenuItem<String>> timeInSeconds =[];

    int j = 0;
    for(int i = 0; i < 7; i++){
      var newItem = DropdownMenuItem(child: Text('$j'), value: '$j',);
    timeInSeconds.add(newItem);
    j += 30;
    }

    return DropdownButton<String>(

      value: currentTime,
      items: timeInSeconds,
      onChanged: (value) {
        setState(() {
          currentTime = value;
          // getData();
        });
      },
    );
  }

  //dropdown for ios
  CupertinoPicker IOSPicker(){

   List<Text> timeInSeconds =[];
   int j = 0;
   for(int i = 0; i < 7; i++){
     timeInSeconds.add(Text('$j'));
     j += 30;
   }

    return CupertinoPicker(itemExtent: 7.0, onSelectedItemChanged: (selectedIndex){
    }, children: timeInSeconds,
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text('Settings'),
        ),
      ),
        body: SafeArea(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text('Timer:', style: TextStyle(
                          color: Colors.white,
                          fontSize: 41.0,
                        ),),
                      ),
                    ),Container(
                      height: 60.0,
                      alignment: Alignment.center,
                      // padding: EdgeInsets.only(bottom: 30.0),
                      color: Colors.redAccent,
                      child: Platform.isIOS ? IOSPicker() : androidDropdownButton(),
                    ),
                  ],
                ),
                FlatButton(
                  child: Text('Set'),
                  color: Colors.red,
                  onPressed: () => kTimerTime = int.parse(currentTime),
                )
              ],
            ),
          ),
        ),
      );
  }
}
