import 'package:flutter/material.dart';
import 'package:project/layout/cummunity_layout.dart';

class CommunityHome extends StatelessWidget {
  const CommunityHome({super.key});

  @override
  Widget build(BuildContext context) {
    return CommunityLayout(
      children: [
        Text('community'),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            '테스트 돌아가기',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}
