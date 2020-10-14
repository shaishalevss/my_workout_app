import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:my_workout/models/drill.dart';

class DrillData extends ChangeNotifier {
  List<Drill> _drillsA = [
    Drill(name: 'חימום', sets: 0),
    Drill(name: 'סקוואט', sets: 2),
    Drill(name: 'סומו סקוואט', sets: 2),
    Drill(name: 'דדליפט רומני/עליות אגן', sets: 2),
    Drill(name: 'ספליט סקוואט', sets: 2),
    Drill(name: 'עליות תאומים בעמידה', sets: 2),
    Drill(name: 'עליות תאומים בישיבה', sets: 2),
    Drill(name: 'סופר-סט הרחקת כתפיים+לחיצת כתפיים', sets: 2),
    Drill(name: 'פייס פול', sets: 2),
    Drill(name: 'כפיפות כתף', sets: 2),
    Drill(name: 'לחיצה צרפתית', sets: 2),
    Drill(name: 'בנ\'ץ פרס/שכיבות צמודות', sets: 2),
    Drill(name: 'פשיטת מרפקים מפולי עליון', sets: 2),
    Drill(name: 'כפיפת כף יד', sets: 2),
    Drill(name: 'פשיטת כף יד', sets: 2),
    Drill(name: 'בטן', sets: 0),
    Drill(name: 'מייצבים', sets: 0),
  ];

  List<Drill> _drillsB = [
    Drill(name: 'חימום', sets: 0),
    Drill(name: 'מתח/פולי עליון', sets: 2),
    Drill(name: 'חתירה צמודה', sets: 2),
    Drill(name: 'פול אובר', sets: 2),
    Drill(name: 'דחיקת חזה/שכיבות שמיכה', sets: 2),
    Drill(name: 'מקבילים/פרפר מלמעלה למטה', sets: 2),
    Drill(name: 'דחיקת חזה בשיפוע חיובי', sets: 2),
    Drill(name: 'כפיפות מרפקים דגש לראש הארוך', sets: 2),
    Drill(name: 'כפיפות מרפקים דגש לראש הקצר', sets: 2),
    Drill(name: 'פטישים', sets: 2),
    Drill(name: 'טרפזים', sets: 2),
    Drill(name: 'בטן', sets: 0),
    Drill(name: 'מייצבים', sets: 0),
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
