import 'package:assessment_movie_app/utils/app_size.dart';
import 'package:assessment_movie_app/utils/colors.dart';
import 'package:assessment_movie_app/utils/images.dart';
import 'package:assessment_movie_app/utils/styles.dart';
import 'package:assessment_movie_app/views/global/app_back_button.dart';
import 'package:assessment_movie_app/views/global/app_button.dart';
import 'package:assessment_movie_app/views/global/back_ground.dart';
import 'package:assessment_movie_app/views/global/seat_col_text.dart';
import 'package:assessment_movie_app/views/pay_view/widgets/grey_button.dart';
import 'package:assessment_movie_app/views/pay_view/widgets/grey_button2.dart';
import 'package:assessment_movie_app/views/pay_view/widgets/seats_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PayView extends StatelessWidget {
  const PayView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
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
                        subHeading: "March 5, 2021 | 12:30 Main Hall 1")
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 45.0),
                  child: SvgPicture.asset(numberIcon),
                ),
                const SizedBox(
                  width: 12,
                ),
                SvgPicture.asset(seatsIcon),
              ],
            ),
            const SizedBox(
              height: 135,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image(image: AssetImage(plusIcon)),
                  SizedBox(
                    width: 5,
                  ),
                  Image(image: AssetImage(minusIcon)),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SvgPicture.asset(bottomIndicatorIcon),
            const SizedBox(
              height: 7,
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 26,
                    ),
                    SeatsRow(
                        firstSeat: brownSeatIcon,
                        firstText: "Selected",
                        secondSeat: greySeatIcon,
                        secondText: "Not available"),
                    const SizedBox(
                      height: 15,
                    ),
                    SeatsRow(
                        firstSeat: purpleSeatIcon,
                        firstText: "VIP(150\$)",
                        secondSeat: "assets/blueIcon.svg",
                        secondText: "Regular (50 \$)"),
                    const SizedBox(
                      height: 32,
                    ),
                    const GreyButton(),
                    const SizedBox(
                      height: 35,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const GreyButton2(),
                        AppButton(
                            text: "Proceed to Pay",
                            width: width(context) * 0.55,
                            onPress: () {})
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
