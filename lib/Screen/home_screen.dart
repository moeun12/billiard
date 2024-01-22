import 'package:flutter/material.dart';
import 'package:project/Screen/community/comunity_home.dart';
import 'package:project/Screen/game/game_home.dart';
import 'package:project/Screen/starting_screen/device_connet.dart';
import 'package:project/layout/starting_layout.dart';
import 'package:project/Screen/starting_screen/login.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return StartingLayout(
      children: [
        Expanded(
          flex: 5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'ILTASSAFY',
                style: TextStyle(
                    color: Colors.white, fontFamily: 'jua', fontSize: 40),
                textAlign: TextAlign.center,
              ),
              Text(
                'Dangu\napp',
                style: TextStyle(
                    color: Colors.white, fontFamily: 'jua', fontSize: 24),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        Expanded(
          flex: 12,
          child: TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => CommunityHome(),
                ),
              );
            },
            child: Text(
              '게시판 테스트 버튼',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30
              ),
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => Login(),
                    ),
                  );
                },
                child: Text(
                  'Log In',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) => DeviceConnect(),
                        ),
                      );
                    },
                    child: Text(
                      '기기연결',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
