import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:my_workout/models/drill.dart';

class DrillData extends ChangeNotifier {
  List<Drill> _drillsA = [
    Drill(name: 'Warmup', sets: 0),
    Drill(name: 'Squats', sets: 2),
    Drill(name: 'Sumo Squats', sets: 2),
    Drill(name: 'Romanian Deadlift/Elevate Hips', sets: 2),
    Drill(name: 'Bulgarian Split Squats', sets: 2),
    Drill(name: 'Standing Calves', sets: 2),
    Drill(name: 'Sitting Calves', sets: 2),
    Drill(name: 'Super Set -> Expulsion & Press', sets: 2),
    Drill(name: 'Face Pull', sets: 2),
    Drill(name: 'Shoulder Flexing', sets: 2),
    Drill(name: 'French Press', sets: 2),
    Drill(name: 'Tight Bench Press', sets: 2),
    Drill(name: 'Pushing Elbows From Upper Poly', sets: 2),
    Drill(name: 'Forearm Flexing', sets: 2),
    Drill(name: 'Forearm Extending', sets: 2),
    Drill(name: 'ABS', sets: 0),
    Drill(name: 'Back Stability', sets: 0),
  ];

  List<Drill> _drillsB = [
    Drill(name: 'Warmup', sets: 0),
    Drill(name: 'Pull-Up/Upper Poly', sets: 2),
    Drill(name: 'מתיחה צמודה', sets: 2),
    Drill(name: 'Romanian Deadlift/Elevate Hips', sets: 2),
    Drill(name: 'Bulgarian Split Squats', sets: 2),
    Drill(name: 'Standing Calves', sets: 2),
    Drill(name: 'Sitting Calves', sets: 2),
    Drill(name: 'Super Set -> Expulsion & Press', sets: 2),
    Drill(name: 'Face Pull', sets: 2),

  ];

  UnmodifiableListView<Drill> get drillsA {
    return UnmodifiableListView(_drillsA);
  }

  UnmodifiableListView<Drill> get drillsB {
    return UnmodifiableListView(_drillsB);
  }


  void updateDrill(Drill drill) {
    drill.toggleDone();
    notifyListeners();
  }

  void decreaseSet(int index, String plan) {
    if(plan == 'a') {
      _drillsA[index].sets--;
    } else{
      _drillsB[index].sets--;
    }
  }

  int drillCount (String plan){
    if(plan == 'a') {
      return _drillsA.length;
    } else{
      return _drillsB.length;
    }
    return _drillsB.length;
  }
}
