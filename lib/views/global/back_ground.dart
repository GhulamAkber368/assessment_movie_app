import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  Widget widget1;
  Widget widget2;
  Background({required this.widget1, required this.widget2, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(height: 111, color: Colors.white, child: widget1),
          widget2
        ],
      )),
    );
  }
}
