import 'package:assessment_movie_app/utils/colors.dart';
import 'package:assessment_movie_app/utils/images.dart';
import 'package:assessment_movie_app/utils/styles.dart';
import 'package:assessment_movie_app/view_model/select_seat_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SeatsList extends StatefulWidget {
  const SeatsList({super.key});

  @override
  State<SeatsList> createState() => _SeatsListState();
}

class _SeatsListState extends State<SeatsList> {
  SelectSeatViewModel selectSeatViewModel = Get.put(SelectSeatViewModel());
  int selectedIndex2 = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Text(
                        "12:30",
                        style: smallText,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Clinetech + Hall 1",
                        style: darkGreySmallText,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  InkWell(onTap: () {
                    selectSeatViewModel.setSelectedSeat(index);
                    // setState(() {
                    //   selectedIndex2 = index;
                    // });
                  }, child:
                      GetBuilder<SelectSeatViewModel>(builder: (controller) {
                    return Container(
                      width: 249,
                      height: 145,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: index == controller.selectedSeat
                                  ? blueColor
                                  : darkGreyColor),
                          borderRadius: BorderRadius.circular(10)),
                      child: SvgPicture.asset(seatIcon),
                    );
                  })),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      Text(
                        "From ",
                        style: darkGreySmallText,
                      ),
                      Text(
                        "50\$ ",
                        style: smallText,
                      ),
                      Text(
                        "or ",
                        style: darkGreySmallText,
                      ),
                      Text(
                        "2500 bonus",
                        style: smallText,
                      )
                    ],
                  )
                ],
              ),
            );
          }),
    );
  }
}
