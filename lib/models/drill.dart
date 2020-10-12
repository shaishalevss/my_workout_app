class Drill {
  final String name;
  int sets;
  bool isDone;

  //constructor
  Drill({this.name, this.sets ,this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }
}