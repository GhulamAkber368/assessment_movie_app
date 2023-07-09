import 'package:assessment_movie_app/utils/styles.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  String text;
  double width;
  Function() onPress;
  AppButton(
      {required this.text,
      required this.width,
      required this.onPress,
      super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            fixedSize: Size(width, 50),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        onPressed: onPress,
        child: Text(
          text,
          style: whiteMediumText,
        ));
  }
}
