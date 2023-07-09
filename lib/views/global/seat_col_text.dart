import 'package:assessment_movie_app/utils/styles.dart';
import 'package:flutter/material.dart';

class SeatColText extends StatelessWidget {
  String heading;
  String subHeading;
  SeatColText({required this.heading, required this.subHeading, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              heading,
              style: mediumText,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              subHeading,
              style: blueSmallText,
            )
          ],
        ),
      ),
    );
  }
}
