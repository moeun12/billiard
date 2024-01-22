import 'package:flutter/material.dart';
import 'package:project/Screen/game/game_home.dart';
import 'package:project/layout/starting_layout.dart';

class DeviceConnect extends StatelessWidget {
  const DeviceConnect({super.key});

  @override
  Widget build(BuildContext context) {
    return StartingLayout(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Text('기기연결'),
                Text('주의사항\n어쩌고 저쩌고\n.\n.\n.',
                textAlign: TextAlign.start,),
                // TextField(
                //   controller: _passwordController,
                //   obscureText: true,
                //   decoration: InputDecoration(labelText: '기기번호'),
                // ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) => GameHome(),
                      ),
                    );
                  },
                  child: Text('Connect'),
                ),
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'Back',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
