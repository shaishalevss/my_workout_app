import 'package:flutter/material.dart';
import 'package:my_workout/screens/home_screen.dart';
import 'package:my_workout/screens/plan_a.dart';
import 'package:my_workout/screens/plan_b.dart';
import 'package:my_workout/screens/select_area.dart';
import 'package:provider/provider.dart';
import 'package:provider/provider.dart';
import 'models/drill_data.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DrillData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        initialRoute: '/',
        routes: {
          'planA': (context) => PlanAScreen(),
          '/' : (context) => HomeScreen(),
          'planB' : (context) => PlanBScreen(),
          'selectArea' : (context) => SelectAreaScreen(),
        },
      ),
    );
  }
}
