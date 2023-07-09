import 'package:assessment_movie_app/utils/app_size.dart';
import 'package:assessment_movie_app/utils/colors.dart';
import 'package:flutter/material.dart';

class TopTextField extends StatelessWidget {
  const TopTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(0),
          child: Container(
            height: 52,
            width: width(context) * 0.9,
            decoration: BoxDecoration(
                color: greyColor, borderRadius: BorderRadius.circular(30)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: TextFormField(
                cursorColor: darkGreyColor,
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "TV shows, movies and more",
                    hintStyle: TextStyle(color: hintTextGreyColor),
                    prefixIcon: Icon(
                      Icons.search,
                      color: darkGreyColor,
                    ),
                    suffixIcon: Icon(
                      Icons.close,
                      color: darkGreyColor,
                    )),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
