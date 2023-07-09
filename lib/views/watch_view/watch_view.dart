import 'package:assessment_movie_app/utils/images.dart';
import 'package:assessment_movie_app/utils/styles.dart';
import 'package:assessment_movie_app/views/movie_details_view/movie_details_view.dart';
import 'package:flutter/material.dart';
import 'package:assessment_movie_app/view_model/upcoming_movies_view_model.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class WatchView extends StatelessWidget {
  WatchView({super.key});

  UpComingMoviesViewModel upcomingMoviesViewModel = UpComingMoviesViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.white,
              height: 111,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Watch",
                      style: mediumText,
                    ),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.search))
                  ],
                ),
              ),
            ),

            // FutureBuilder(
            //     future: upcomingMoviesViewModel.fetchUpComingMoviesListApi(),
            //     builder: (context, snapshot) {
            //       if (!snapshot.hasData) {
            //         return CircularProgressIndicator();
            //       } else if (snapshot.hasError) {
            //         return Text("Something went wrong!");
            //       } else {
            //         return Text("Ali");
            //       }
            //     })

            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 5,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: SizedBox(
                        height: 180,
                        child: InkWell(
                          onTap: () {
                            Get.to(() => const MovieDetailsView());
                          },
                          child: const Stack(
                            alignment: AlignmentDirectional.center,
                            children: [
                              Image(image: AssetImage(pic1Icon)),
                              Positioned(
                                  top: 137,
                                  left: 40,
                                  child: Text(
                                    "Free Guy",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ))
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      )),
    );
  }
}
