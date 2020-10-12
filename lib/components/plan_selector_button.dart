import 'package:flutter/material.dart';
import 'package:my_workout/constants.dart';

class planSelectorButton extends StatelessWidget {
  final String text;
  final Function route;
  planSelectorButton({@required this.text, this.route});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth,
      height: screenHeight * 0.1,
      alignment: Alignment.center,
      margin: EdgeInsets.only(
        top: screenHeight * 0.04,
        right: screenWidth * 0.01,
        left: screenWidth * 0.01,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/buttonbackground.png"),
            fit: BoxFit.cover),
      ),
      child: SizedBox.expand(
        child: FlatButton(
            onPressed: route,
            child: Text(
              '$text',
              style: kWorkoutLabelTextStyle,
              textAlign: TextAlign.center,
            )),
      ),
    );
  }
}
