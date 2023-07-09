import 'package:assessment_movie_app/utils/app_size.dart';
import 'package:assessment_movie_app/utils/colors.dart';
import 'package:assessment_movie_app/utils/images.dart';
import 'package:assessment_movie_app/utils/styles.dart';
import 'package:assessment_movie_app/views/global/app_back_button.dart';
import 'package:assessment_movie_app/views/global/app_button.dart';
import 'package:assessment_movie_app/views/movie_details_view/widgets/genre_box.dart';
import 'package:assessment_movie_app/views/movie_details_view/widgets/transparent_button.dart';
import 'package:assessment_movie_app/views/select_seat_view/select_seat_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class MovieDetailsView extends StatelessWidget {
  const MovieDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              const Image(
                image: AssetImage(moviePic),
              ),
              Positioned(
                top: 50,
                child: SizedBox(
                  width: width(context),
                  child: const Row(
                    children: [
                      AppBackButton(),
                      Text(
                        "Watch",
                        style: mediumText,
                      )
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: height(context) * 0.27,
                  ),
                  const Image(image: AssetImage(movieLogoIcon)),
                  const Text(
                    "In Theaters December 22, 2021",
                    style: whiteMediumText,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  AppButton(
                    text: "Get Ticket",
                    width: width(context) * 0.7,
                    onPress: () {
                      Get.to(() => SelectSeatView());
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const TransparentButton()
                ],
              )
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: ListView(
                children: [
                  const Text(
                    "Genres",
                    style: mediumText,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      GenreBox(text: "Action", color: greenColor),
                      const SizedBox(
                        width: 5,
                      ),
                      GenreBox(text: "Thriller", color: purpleColor),
                      const SizedBox(
                        width: 5,
                      ),
                      GenreBox(text: "Science", color: darkBlueColor),
                      const SizedBox(
                        width: 5,
                      ),
                      GenreBox(text: "Fiction", color: yellowColor),
                    ],
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Overview",
                    style: mediumText,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "As a collection of history's worst tyrants and criminal masterminds gather to plot a war to wipe out millions, one man must race against time to stop them. Discover the origins of the very first independent intelligence agency in The King's Man. The Comic Book “The Secret Service” by Mark Millar and Dave Gibbons.",
                    style: darkGreySmallText,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
