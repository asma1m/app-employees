import 'package:employees_app/common/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widget/custom_app_bar.dart';

class Invitation extends StatelessWidget {
  const Invitation(
      {super.key,
      required this.name,
      required this.startTime,
      required this.endTime,
      this.place});

  final name;
  final startTime;
  final endTime;
  final place;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: "الدعوات",
          onTap: () {
            Get.back();
          },
        ),
        body: Stack(alignment: Alignment.topCenter, children: [
          Positioned(
            top: 140,
            child: Stack(alignment: Alignment.center, children: [
              Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white),
              ),
              Image.asset("assets/images/DealerLogo.png"),
              Image.asset("assets/images/Home.png"),
            ]),
          ),
          Center(
            child: Container(
              height: Get.height * 0.45,
              width: Get.width * 0.8,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(137, 227, 227, 227),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: const Color(0xffDADADA))),
              child: Column(
                children: [
                  const SizedBox(height: 60),
                  Text(
                    "الإدارة : $name ",
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          fontSize: 18,
                        ),
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    " $endTime - $startTime : الوقت",
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          fontSize: 18,
                        ),
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "المقر : $place ",
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          fontSize: 18,
                        ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Button(onTap: () {}, title: "تأكيد الحجز"),
                  )
                ],
              ),
            ),
          )
        ]));
  }
}
