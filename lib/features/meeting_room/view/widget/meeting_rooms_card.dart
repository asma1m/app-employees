import 'package:employees_app/core/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/theme/app_color.dart';
import '../../model/meeting_rooms_modle.dart';

class MeetingRoomsCard extends StatelessWidget {
  const MeetingRoomsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerRight,
          child: Text(
            "غرف الاجتماعات  ",
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(fontWeight: FontWeight.normal, fontSize: 20),
          ),
        ),
        SizedBox(
          height: Get.height * 0.02,
        ),
        SizedBox(
          height: 160,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: rooms.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => InkWell(
              onTap: () => Get.toNamed(Routs.bookingRomm),
              child: Container(
                  margin: const EdgeInsets.all(5),
                  decoration: cardDecoration(context),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 40, left: 10),
                            child: Text(
                              rooms[index]["name"].toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineLarge!
                                  .copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20),
                            ),
                          ),
                          SizedBox(height: Get.height * 0.02),
                          Container(
                            height: 30,
                            width: 60,
                            decoration: BoxDecoration(
                                color: rooms[index]["available"] == "متاح"
                                    ? const Color.fromARGB(104, 153, 230, 157)
                                    : const Color.fromARGB(108, 239, 185, 143),
                                borderRadius: BorderRadius.circular(25)),
                            child: Center(
                                child: Text(
                              rooms[index]["available"].toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineLarge!
                                  .copyWith(
                                      fontSize: 12,
                                      color: rooms[index]["available"] == "متاح"
                                          ? Colors.green
                                          : Colors.orange),
                            )),
                          ),
                        ],
                      ),
                      Container(
                        height: Get.height * 0.08,
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                width: 1, color: AppColors.greyColor)),
                        child: Image(
                          image: AssetImage(rooms[index]["image"].toString()),
                        ),
                      ),
                    ],
                  )),
            ),
          ),
        ),
      ],
    );
  }
}

BoxDecoration cardDecoration(BuildContext context) => BoxDecoration(
      color:
          Get.isDarkMode ? const Color.fromARGB(255, 68, 65, 65) : Colors.white,
      borderRadius: BorderRadius.circular(20),
      border: Get.isDarkMode
          ? Border.all(color: AppColors.purpleColor.withOpacity(0.05))
          : Border.all(
              color: const Color(0xffF2ECFF), width: 0.5, // light
            ),
    );
