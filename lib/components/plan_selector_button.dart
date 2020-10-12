import 'package:flutter/material.dart';
import 'package:my_workout/constants.dart';

class planSelectorButton extends StatelessWidget {

  final String text;
  final Function route;
  planSelectorButton({@required this.text,this.route});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 85.0,
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 20.0, right: 6.0, left: 6.0),
      decoration: BoxDecoration(
        image: DecorationImage(
            image:AssetImage("images/buttonbackground.png"),
            fit:BoxFit.cover
        ),
      ),
      child: SizedBox.expand(
        child: FlatButton(
          onPressed: route,
          child: Text('$text', style: kWorkoutLabelTextStyle, textAlign: TextAlign.center,)
        ),
      ),
    );
  }
}
