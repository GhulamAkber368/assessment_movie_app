import 'package:assessment_movie_app/utils/styles.dart';
import 'package:assessment_movie_app/views/global/app_back_button.dart';
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 111,
      color: Colors.white,
      child: const Padding(
        padding: EdgeInsets.only(left: 20.0),
        child: Row(
          children: [
            AppBackButton(),
            SizedBox(
              width: 10,
            ),
            Text(
              "3 Results Found",
              style: mediumText,
            )
          ],
        ),
      ),
    );
  }
}
