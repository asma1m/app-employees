import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmployeeCard extends StatelessWidget {
  const EmployeeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
          height: Get.height * 0.6,
          width: Get.width * 0.7,
          child: Column(
            children: [
              Stack(children: [
                Column(
                  children: [
                    SizedBox(
                      height: Get.height * 0.01,
                    ),
                    SizedBox(
                        width: Get.width * 0.5,
                        child: Image.asset("assets/images/logo-dark.png")),
                    SizedBox(
                      height: Get.height * 0.03,
                    ),
                    Container(
                      height: Get.height * 0.25,
                      width: Get.width * 0.35,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              image: AssetImage("assets/images/hijab.png"),
                              alignment: Alignment.bottomCenter,
                              fit: BoxFit.fitHeight)),
                    ),
                    SizedBox(
                      height: Get.height * 0.03,
                    ),
                    Text(
                      "سارا محمد",
                      style:
                          Theme.of(context).textTheme.headlineMedium!.copyWith(
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff0096c7),
                              ),
                    ),
                    SizedBox(
                      height: Get.height * 0.009,
                    ),
                    Text(
                      "Sara Mohammed",
                      style:
                          Theme.of(context).textTheme.headlineMedium!.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                    SizedBox(
                      height: Get.height * 0.019,
                    ),
                    Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Container(
                          height: Get.height * 0.1,
                          width: Get.width * 0.7,
                          color: const Color(0xff0096c7),
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              Container(
                                height: Get.height * 0.03,
                                width: Get.width * 0.6,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 66, 63, 63),
                                    borderRadius: BorderRadius.circular(25)),
                                child: Text(
                                  "الرقم الوظيفي",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineMedium!
                                      .copyWith(
                                          fontSize: 15, color: Colors.white),
                                ),
                              ),
                              SizedBox(
                                height: Get.height * 0.019,
                              ),
                              Text(
                                "56765",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineMedium!
                                    .copyWith(
                                        fontSize: 25, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ]),
            ],
          )),
    );
  }
}
