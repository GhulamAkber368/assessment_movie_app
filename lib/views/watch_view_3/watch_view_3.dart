import 'package:assessment_movie_app/utils/colors.dart';
import 'package:assessment_movie_app/utils/images.dart';
import 'package:assessment_movie_app/utils/styles.dart';
import 'package:assessment_movie_app/views/global/app_back_button.dart';
import 'package:assessment_movie_app/views/watch_view_3/widgets/top_bar.dart';
import 'package:flutter/material.dart';

class WatchView3 extends StatelessWidget {
  const WatchView3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TopBar(),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "Top Results",
              style: smallText,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Divider(),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 3,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        const Image(image: AssetImage(pic3Icon)),
                        const SizedBox(
                          width: 20,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "A Time to Kill",
                              style: mediumText,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Crime",
                              style: movieSubtiteStyle,
                            )
                          ],
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.more_horiz,
                                  color: blueColor,
                                )),
                          ),
                        )
                      ],
                    ),
                  );
                }),
          )
        ],
      )),
    );
  }
}
