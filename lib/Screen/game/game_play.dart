import 'package:flutter/material.dart';
import 'package:project/Screen/game/replay.dart';
import 'package:project/layout/play_layout.dart';

class GamePlay extends StatelessWidget {
  const GamePlay({super.key});

  @override
  Widget build(BuildContext context) {
    return PlayLayout(
      head_row: [
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Expanded(
            child: Image.asset(
              'asset/icon/home.png',
            ),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => Replay(),
                    ),
                  );
                },
                child: Text(
                  '다시보기',
                  style: TextStyle(
                      color: Colors.black, fontFamily: 'jua', fontSize: 40),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  '커뮤니티',
                  style: TextStyle(
                      color: Colors.black, fontFamily: 'jua', fontSize: 40),
                ),
              ),
            ),
          ],
        ),
      ],
      body_row: [
        Column(
          children: [
            Row(
              children: [
                Center(
                  child: Text('유저'),
                ),
                Center(
                  child: Text('Bar'),
                ),
                Center(
                  child: Text('< 100 >'),
                ),
              ],
            ),
          ],
        ),
      ],
      foot_row: [
        Container(
          color: Colors.grey,
          width: 200,
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('asset/icon/settings.png'),
              Text('  00:11:22',
                style:
                TextStyle(color: Colors.black, fontSize: 30),
              )
            ],
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            '종료',
            style:
                TextStyle(color: Colors.black, fontFamily: 'jua', fontSize: 40),
          ),
        ),
      ],
    );
  }
}
