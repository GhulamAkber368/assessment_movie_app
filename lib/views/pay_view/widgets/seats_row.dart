import 'package:assessment_movie_app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SeatsRow extends StatelessWidget {
  String firstSeat;
  String firstText;
  String secondSeat;
  String secondText;
  SeatsRow(
      {required this.firstSeat,
      required this.firstText,
      required this.secondSeat,
      required this.secondText,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(firstSeat),
        const SizedBox(
          width: 5,
        ),
        Text(
          firstText,
          style: darkGreySmallText,
        ),
        const SizedBox(
          width: 55,
        ),
        SvgPicture.asset(secondSeat),
        const SizedBox(
          width: 5,
        ),
        Text(
          secondText,
          style: darkGreySmallText,
        )
      ],
    );
  }
}
