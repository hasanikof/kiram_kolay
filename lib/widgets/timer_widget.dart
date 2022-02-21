import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/current_remaining_time.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';

class TimerWidget extends StatelessWidget {
 
  int endTime = DateTime.now().millisecondsSinceEpoch + 1000 * 120;

  @override
  Widget build(BuildContext context) {
    return CountdownTimer(
      widgetBuilder: (_, CurrentRemainingTime? time) {
        if (time == null) {
          return Text(
            '${0} : ${0}',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          );
        }
        return Text(
          '${time.min ?? 0} : ${time.sec ?? 0}',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        );
      },
      endTime: endTime,
    );
  }
}
