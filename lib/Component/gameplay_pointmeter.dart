import 'package:flutter/material.dart';

class PointMeter extends StatefulWidget {
  const PointMeter({super.key});

  @override
  State<PointMeter> createState() => _PointMeterState();
}

class _PointMeterState extends State<PointMeter> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Center(
            child: Text('유저'),
          ),
        ),
        Expanded(
          flex: 2,
          child: Center(
            child: Text('Bar'),
          ),
        ),
        Expanded(
          flex: 1,
          child: Center(
            child: Text('< 100 >'),
          ),
        ),
      ],
    );
  }
}

