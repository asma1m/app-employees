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
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                color: const Color.fromARGB(255, 77, 71, 71),
                fontFamily: "Tajawal"),
          ),
        ),
        SizedBox(
          height: Get.height * 0.2,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: rooms.length,
            itemBuilder: (context, index) => Expanded(
              child: Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.only(
                    right: 10,
                  ),
                  decoration: cardDecoration(context),
                  //  width: Get.width * 0.55,
                  child: Stack(
                    children: [
                      Positioned(
                        top: Get.height * 0.09,
                        child: SizedBox(
                          height: Get.height * 0.1,
                          child: Image(
                            image: AssetImage(rooms[index]["image"].toString()),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 45, left: 40),
                            child: Text(
                              rooms[index]["name"].toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.right,
                            ),
                          ),
                          SizedBox(height: Get.height * 0.03),
                          Container(
                            height: 30,
                            width: 60,
                            decoration: BoxDecoration(
                                color: rooms[index]["available"] == "متاح"
                                    ? const Color.fromARGB(117, 117, 204, 122)
                                    : const Color.fromARGB(123, 238, 137, 59),
                                borderRadius: BorderRadius.circular(25)),
                            child: Center(
                                child: Text(
                              rooms[index]["available"].toString(),
                              style: Theme.of(context).textTheme.bodySmall,
                            )),
                          )
                        ],
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
