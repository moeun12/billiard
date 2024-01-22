import 'package:flutter/material.dart';

class CommunityLayout extends StatelessWidget {
  final List<Widget> children;

  const CommunityLayout({required this.children, super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        // backgroundColor: Colors.transparent,
        body: Padding(
          padding:
          const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: children,
          ),
        ),
      ),
    );
  }
}
