import 'package:flutter/material.dart';
import 'package:billiard/Screen/game/game_play.dart';
import 'package:billiard/Screen/game/trial_play.dart';
import 'package:billiard/layout/game_layout.dart';

class GameHome extends StatelessWidget {
  const GameHome({super.key});

  @override
  Widget build(BuildContext context) {
    return GameLayout(
      head_row: [
        Text(''),
        // ElevatedButton(
        //   onPressed: () {
        //     Navigator.of(context).pop();
        //   },
        //   child: Expanded(
        //     child: Image.asset('asset/icon/home.png',
        //     ),
        //   ),
        // ),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            '커뮤니티',
            style:
                TextStyle(color: Colors.black, fontFamily: 'jua', fontSize: 40),
          ),
        ),
      ],
      body_row: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) => GamePlay(),
                    ),
                  );
                },
                child: Text('3ball play'),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) => GamePlay(),
                    ),
                  );
                },
                child: Text('4ball play'),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) => TrialPlay(),
                    ),
                  );
                },
                child: Text('Trial'),
              ),
            ),
          ),
        ),
      ],
      foot_row: [
        Text(''),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            'Disconnect',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}
