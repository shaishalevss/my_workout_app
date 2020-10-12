import 'package:flutter/material.dart';
import 'package:my_workout/widgets/drill_tile.dart';
import 'package:provider/provider.dart';
import 'package:my_workout/models/drill_data.dart';
import 'package:my_workout/components/timerDisplay.dart';

class DrillsList extends StatefulWidget {

  @override
  _DrillsListState createState() => _DrillsListState();
}

class _DrillsListState extends State<DrillsList> {

  Future<void> _showMyDialog() async {
    return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) => SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom),
          child: TimerCountDown(),
        ),
      ),
      isDismissible: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<DrillData>(
      builder: (context, drillData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final drill = drillData.drillsA[index];
            return GestureDetector(
              child: DrillTile(
                drillTitle: drill.name,
                isChecked: drill.isDone,
                checkboxCallback: (bool currentCheckboxState){
                  setState(() {
                    if(drill.sets > 1){
                      // ignore: await_only_futures
                      drillData.decreaseSet(index);
                      _showMyDialog();
                    } else {
                      // ignore: await_only_futures
                      drillData.decreaseSet(index);
                      drillData.updateDrill(drill);
                      (drill.isDone) ? _showMyDialog() : print('hey');
                    }
                  });
                },
                drillSets: drill.sets,
              ),
            );
          },
          itemCount: drillData.drillCount,
        );
      },
    );
  }
}
