import 'package:assessment_movie_app/utils/colors.dart';
import 'package:assessment_movie_app/utils/images.dart';
import 'package:assessment_movie_app/utils/styles.dart';
import 'package:assessment_movie_app/views/watch_view/watch_view.dart';
import 'package:assessment_movie_app/views/watch_view_2/watch_view_2.dart';
import 'package:assessment_movie_app/views/watch_view_3/watch_view_3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int index = 0;
  final screens = [
    const Center(child: Text("Dashboard")),
    WatchView(),
    // const Center(child: Text("Media Library")),
    const WatchView2(),
    // const Center(child: Text("More")),
    const WatchView3()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[index],
        bottomNavigationBar:
            // SizedBox(
            //   height: 75,
            //   child: ClipRRect(
            //     borderRadius: BorderRadius.circular(20),
            //     child: BottomNavigationBar(
            //         backgroundColor: mainColor,
            //         currentIndex: index,
            //         selectedItemColor: Colors.white,
            //         selectedLabelStyle: const TextStyle(
            //             color: Colors.white,
            //             fontSize: 10,
            //             fontWeight: FontWeight.w700),
            //         unselectedLabelStyle: const TextStyle(fontSize: 10),
            //         onTap: (value) {
            //           setState(() {
            //             index = value;
            //           });
            //         },
            //         items: [
            //           BottomNavigationBarItem(
            //               icon: SvgPicture.asset("assets/dashBoardIcon.svg"),
            //               label: "Dashboard",
            //               backgroundColor: Colors.white),
            //           BottomNavigationBarItem(
            //               icon: SvgPicture.asset("assets/watchIcon.svg"),
            //               label: "Watch")
            //         ]),
            //   ),
            // )

            NavigationBarTheme(
          data: NavigationBarThemeData(
              indicatorColor: Colors.transparent,
              labelTextStyle: MaterialStateProperty.all(labelTextStyle)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(27),
            child: NavigationBar(
                backgroundColor: mainColor,
                height: 75,
                selectedIndex: index,
                onDestinationSelected: (value) {
                  setState(() {
                    index = value;
                  });
                },
                destinations: [
                  NavigationDestination(
                    icon: SvgPicture.asset(dashBoardIcon),
                    label: "Dashboard",
                  ),
                  NavigationDestination(
                      icon: SvgPicture.asset(watchIcon), label: "Watch"),
                  NavigationDestination(
                      icon: SvgPicture.asset(mediaIcon),
                      label: "Media Library"),
                  NavigationDestination(
                      icon: SvgPicture.asset(moreIcon), label: "More")
                ]),
          ),
        ));
  }
}
