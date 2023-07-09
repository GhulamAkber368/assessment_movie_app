import 'package:assessment_movie_app/utils/colors.dart';
import 'package:assessment_movie_app/utils/styles.dart';
import 'package:flutter/material.dart';

class GreyButton extends StatelessWidget {
  const GreyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 97,
      height: 30,
      decoration: BoxDecoration(
          color: darkestGreyColor, borderRadius: BorderRadius.circular(10)),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "4 /",
            style: TextStyle(fontSize: 14),
          ),
          Text(
            "3 row ",
            style: extraSmallText,
          ),
          Icon(
            Icons.close,
            size: 20,
          )
        ],
      ),
    );
  }
}
