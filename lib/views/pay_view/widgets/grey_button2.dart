import 'package:assessment_movie_app/utils/colors.dart';
import 'package:assessment_movie_app/utils/styles.dart';
import 'package:flutter/material.dart';

class GreyButton2 extends StatelessWidget {
  const GreyButton2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 108,
      height: 50,
      decoration: BoxDecoration(
          color: darkestGreyColor, borderRadius: BorderRadius.circular(10)),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Total Price",
            style: extraSmallText,
          ),
          Text(
            "\$ 50",
            style: mediumText,
          )
        ],
      ),
    );
  }
}
