
import 'package:dars16/widgets/time_box.dart';
import 'package:flutter/material.dart';

class CountdownTimer extends StatelessWidget {
  const CountdownTimer({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy timer values
    return const Row(
      children: [
        TimeBox(time: "13", label: "Hour"),
        SizedBox(width: 4),
        TimeBox(time: "34", label: "Min"),
        SizedBox(width: 4),
        TimeBox(time: "56", label: "Sec"),
      ],
    );
  }
}
