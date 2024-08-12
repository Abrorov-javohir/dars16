import 'package:flutter/material.dart';

class TimeBox extends StatelessWidget {
  final String time;
  final String label;

  const TimeBox({super.key, required this.time, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          time,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
