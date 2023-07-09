import 'package:assessment_movie_app/utils/app_size.dart';
import 'package:assessment_movie_app/views/global/app_button.dart';
import 'package:assessment_movie_app/views/pay_view/pay_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SelectSeatButton extends StatelessWidget {
  const SelectSeatButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26.0),
          child: AppButton(
              text: "Select Seats",
              width: width(context),
              onPress: () {
                Get.to(() => const PayView());
              }),
        ),
      ),
    );
  }
}
