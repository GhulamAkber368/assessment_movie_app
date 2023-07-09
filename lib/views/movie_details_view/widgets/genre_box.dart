import 'package:assessment_movie_app/utils/styles.dart';
import 'package:flutter/material.dart';

class GenreBox extends StatelessWidget {
  String text;
  Color color;
  GenreBox({required this.text, required this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 24,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(16)),
      child: Center(
          child: Text(
        text,
        style: whiteSmallText,
      )),
    );
  }
}
