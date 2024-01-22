import 'package:flutter/material.dart';
import 'package:billiard/Screen/game/game_home.dart';
import 'package:billiard/layout/play_layout.dart';

class Replay extends StatelessWidget {
  const Replay({super.key});

  @override
  Widget build(BuildContext context) {
    return PlayLayout(
      head_row: [
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => GameHome(),
              ),
            );
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
                  Navigator.of(context).pop();
                },
                child: Text(
                  '뒤로가기',
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
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '< ',
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'jua', fontSize: 40),
                ),
                Expanded(
                  child: Center(
                    child: Image.asset('asset/img/pool_board.png'),
                  ),
                ),
                Text(
                  ' >',
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'jua', fontSize: 40),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('지난경로'),
              ),
              ElevatedButton(
                onPressed: () {
                  _showLocation(context);
                },
                child: Text('다시놓기'),
              ),
              ElevatedButton(
                onPressed: () {
                  _showQuestion(context);
                },
                child: Text('질문하기'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(''),
              ),
            ],
          ),
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
              Text(
                '  00:11:22',
                style: TextStyle(color: Colors.black, fontSize: 30),
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

  Future<void> _showLocation(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('알림'),
          content: Text('당구대에 공 위치가 표시됩니다.\n색에 맞춰 공을 놓고 연습을 시작하세요'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // 모달 닫기
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }
  Future<void> _showQuestion(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('알림'),
          content: Text('현재 공배치를 커뮤니티에 질문합니다.\n이동하시겠습니까?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => GameHome(),
                  ),
                );
              },
              child: Text('예'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // 모달 닫기
              },
              child: Text('아니오'),
            ),
          ],
        );
      },
    );
  }
}
