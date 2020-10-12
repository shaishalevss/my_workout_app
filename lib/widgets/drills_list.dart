import 'package:flutter/material.dart';
import 'package:my_workout/widgets/drill_tile.dart';
import 'package:provider/provider.dart';
import 'package:my_workout/models/drill_data.dart';

class DrillsList extends StatelessWidget {
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
                checkboxCallback: (bool currentCheckboxState) {
                  drillData.updateDrill(drill);
                },
              ),
            );
          },
          itemCount: drillData.drillCount,
        );
      },
    );
  }
}
