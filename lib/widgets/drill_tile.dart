import 'package:flutter/material.dart';
import 'package:my_workout/models/drill_data.dart';

class DrillTile extends StatelessWidget {
  final String drillTitle;
  final bool isChecked;
  final Function checkboxCallback;

  DrillTile({this.isChecked, this.drillTitle, this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        drillTitle,
        style: TextStyle(
          fontFamily: 'Kalam',
          fontSize: 20.0,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        checkColor: Color(0xFFDC143C),
        activeColor: Colors.white,
        onChanged: checkboxCallback,
      ),
    );
  }
}