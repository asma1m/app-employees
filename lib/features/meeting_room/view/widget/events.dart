import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/theme/app_color.dart';
import '../../model/meeting_rooms_modle.dart';

class EventsCard extends StatelessWidget {
  const EventsCard({super.key});

  @override
  Widget build(BuildContext context) {
    List eventTitle = [
      "فعالية يوم الخميس",
      "عرض مشاريع طلاب javaScript",
      "عرض مشاريع طلاب Flutter"
    ];
    return Column(
      children: [
        Container(
          alignment: Alignment.centerRight,
          child: Text(
            "اخر الاحداث في اكادمية طويق  ",
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
          height: 280,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: rooms.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Container(
                margin: const EdgeInsets.all(5),
                decoration: cardDecoration(context),
                child: Column(
                  children: [
                    Container(
                      height: Get.height * 0.24,
                      width: Get.width * 0.85,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        image: DecorationImage(
                          image: AssetImage("assets/images/images-8.jpeg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(height: Get.height * 0.03),
                    Text(eventTitle[index])
                  ],
                )),
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
