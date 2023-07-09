import 'package:assessment_movie_app/utils/styles.dart';
import 'package:assessment_movie_app/view_model/select_seat_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';

import '../../../utils/colors.dart';

class DatesList extends StatefulWidget {
  const DatesList({super.key});

  @override
  State<DatesList> createState() => _DatesListState();
}

class _DatesListState extends State<DatesList> {
  SelectSeatViewModel selectSeatViewModel = Get.put(SelectSeatViewModel());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: selectSeatViewModel.dateList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: InkWell(onTap: () {
                selectSeatViewModel.setSelectedDate(index);
              }, child: GetBuilder<SelectSeatViewModel>(builder: (controller) {
                return Container(
                  width: 67,
                  height: 32,
                  decoration: BoxDecoration(
                    color: index == selectSeatViewModel.selectedDate
                        ? blueColor
                        : darkestGreyColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "${controller.dateList[index]} Mar",
                      style: index == controller.selectedDate
                          ? whiteSmallText
                          : smallText,
                    ),
                  ),
                );
              })),
            );
          }),
    );
  }
}
