import 'package:assessment_movie_app/utils/app_size.dart';
import 'package:assessment_movie_app/utils/colors.dart';
import 'package:assessment_movie_app/utils/images.dart';
import 'package:assessment_movie_app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TransparentButton extends StatelessWidget {
  const TransparentButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width(context) * 0.7,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: blueColor)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(playIcon),
          const SizedBox(
            width: 8,
          ),
          const Text(
            "Watch Trailer",
            style: whiteMediumText,
          )
        ],
      ),
    );
  }
}
