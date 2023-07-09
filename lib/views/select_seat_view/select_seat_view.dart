import 'package:assessment_movie_app/utils/app_size.dart';
import 'package:assessment_movie_app/utils/colors.dart';
import 'package:assessment_movie_app/utils/styles.dart';
import 'package:assessment_movie_app/views/global/app_back_button.dart';
import 'package:assessment_movie_app/views/global/app_button.dart';
import 'package:assessment_movie_app/views/global/back_ground.dart';
import 'package:assessment_movie_app/views/global/seat_col_text.dart';
import 'package:assessment_movie_app/views/pay_view/pay_view.dart';
import 'package:assessment_movie_app/views/select_seat_view/widgets/dates_list.dart';
import 'package:assessment_movie_app/views/select_seat_view/widgets/seats_list.dart';
import 'package:assessment_movie_app/views/select_seat_view/widgets/select_seat_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SelectSeatView extends StatefulWidget {
  SelectSeatView({super.key});

  @override
  State<SelectSeatView> createState() => _SelectSeatViewState();
}

class _SelectSeatViewState extends State<SelectSeatView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            height: 111,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const AppBackButton(),
                  SeatColText(
                      heading: "The King's Man",
                      subHeading: "In Theaters Dec 22, 2021"),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 94,
                ),
                Text(
                  "Date",
                  style: mediumText,
                ),
                SizedBox(
                  height: 15,
                ),
                DatesList(),
                SizedBox(
                  height: 40,
                ),
                SeatsList()
              ],
            ),
          ),
          const SelectSeatButton(),
          const SizedBox(
            height: 20,
          )
        ],
      )),
    );
  }
}
