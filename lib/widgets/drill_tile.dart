import 'package:flutter/material.dart';
import 'package:my_workout/models/drill_data.dart';

class DrillTile extends StatelessWidget {
  final String drillTitle;
  final bool isChecked;
  final Function checkboxCallback;
  final int drillSets;

  DrillTile({this.isChecked, this.drillTitle, this.drillSets ,this.checkboxCallback});

  String getCurrentSetsNumber(){
    return '$drillSets';
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          Text(
            drillTitle,
            style: TextStyle(
              fontFamily: 'Kalam',
              fontSize: 20.0,
              decoration: isChecked ? TextDecoration.lineThrough : null,
            ),
          ),
        ],
      ),
      trailing: Wrap(
        children: <Widget>[
        Text(
          getCurrentSetsNumber(),
        style: TextStyle(
          fontFamily: 'Kalam',
          fontSize: 30.0,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      )
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