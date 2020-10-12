import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:my_workout/models/drill.dart';

class DrillData extends ChangeNotifier {
  List<Drill> _drillsA = [
    Drill(name: 'First Drill'),
    Drill(name: 'Second Drill'),
    Drill(name: 'Third Drill'),
  ];

  // List<Drill> _drillsPlanB = [
  //   Drill(name: 'First Drill'),
  //   Drill(name: 'Second Drill'),
  //   Drill(name: 'Third Drill'),
  // ];

  UnmodifiableListView<Drill> get drillsA {
    return UnmodifiableListView(_drillsA);
  }

  void updateDrill(Drill drill) {
    drill.toggleDone();
    notifyListeners();
  }

  int get drillCount {
    return _drillsA.length;
  }
}