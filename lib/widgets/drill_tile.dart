import 'package:flutter/material.dart';
import 'package:my_workout/models/drill_data.dart';

class DrillTile extends StatelessWidget {
  final String drillTitle;
  final bool isChecked;
  final Function checkboxCallback;
  final int drillSets;

  DrillTile({this.isChecked, this.drillTitle, this.drillSets ,this.checkboxCallback});


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          DrillTextAndSets(text: drillTitle, isChecked: isChecked, fontSize: 20.0,),
        ],
      ),
      trailing: Wrap(
        children: <Widget>[
          DrillTextAndSets(text: '$drillSets', isChecked: isChecked, fontSize: 30.0,)
        ,Checkbox(
          value: isChecked,
          checkColor: Color(0xFFDC143C),
          activeColor: Colors.white,
          onChanged: checkboxCallback,
        )],
      ),
    );
  }
}

class DrillTextAndSets extends StatelessWidget {

  final String text;
  final bool isChecked;
  final double fontSize;

  DrillTextAndSets({this.text, this.isChecked, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Kalam',
        fontSize: fontSize,
        decoration: isChecked ? TextDecoration.lineThrough : null,
      ),
    );
  }
}