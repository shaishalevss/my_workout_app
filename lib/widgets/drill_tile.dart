import 'package:flutter/material.dart';

class DrillTile extends StatelessWidget {
  final String drillTitle;
  final bool isChecked;
  final Function checkboxCallback;
  final int drillSets;

  DrillTile(
      {this.isChecked, this.drillTitle, this.drillSets, this.checkboxCallback});

  String setsIsZero() {
    if (drillSets == 0) {
      return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    double drillWidth = MediaQuery.of(context).size.width * 0.5;
    double setsWidth = MediaQuery.of(context).size.width * 0.1;

    return ListTile(
      title: DrillTextAndSets(
        text: drillTitle,
        isChecked: isChecked,
        fontSize: 20.0,
        side: TextAlign.left,
        width: drillWidth,
      ),
      trailing: Wrap(
        children: <Widget>[
          DrillTextAndSets(
            text: (drillSets == 0) ? '' : '$drillSets',
            isChecked: isChecked,
            fontSize: 29.0,
            side: TextAlign.right,
            width: setsWidth,
          ),
          Container(
            alignment: Alignment.centerRight,
            width: setsWidth,
            child: Checkbox(
              value: isChecked,
              checkColor: Color(0xFFDC143C),
              activeColor: Colors.white,
              onChanged: checkboxCallback,
            ),
          ),
        ],
      ),
    );
  }
}

class DrillTextAndSets extends StatelessWidget {
  final String text;
  final bool isChecked;
  final double fontSize;
  final double width;
  final TextAlign side;

  DrillTextAndSets({
    this.text,
    this.isChecked,
    this.width,
    this.fontSize,
    this.side,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'GveretLevin',
          fontSize: fontSize,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
        textAlign: side,
      ),
    );
  }
}
