import 'package:assessment_movie_app/utils/images.dart';
import 'package:assessment_movie_app/utils/styles.dart';
import 'package:assessment_movie_app/views/watch_view_2/widgets/top_text_field.dart';
import 'package:flutter/material.dart';

class WatchView2 extends StatelessWidget {
  const WatchView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
              height: 111, color: Colors.white, child: const TopTextField()),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    for (int i = 0; i <= 20; i++) ...{
                      const Padding(
                        padding: EdgeInsets.only(right: 10, bottom: 10),
                        child: Stack(
                          children: [
                            Image(
                              image: AssetImage(pic2Icon),
                            ),
                            Positioned(
                              top: 60,
                              left: 10,
                              child: Text(
                                "Crime",
                                style: whiteMediumText,
                              ),
                            )
                          ],
                        ),
                      )
                    }
                  ],
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
