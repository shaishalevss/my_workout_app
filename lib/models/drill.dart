class Drill {
  final String name;
  bool isDone;

  //constructor
  Drill({this.name, this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }
}