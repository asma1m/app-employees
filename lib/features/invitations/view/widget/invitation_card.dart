import 'package:employees_app/core/theme/app_color.dart';
import 'package:flutter/material.dart';

Widget cardInvi(String roomName, String startTime, String endTime) => Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Row(
            children: [
              Icon(
                Icons.arrow_back_ios_sharp,
                color: AppColors.onPrimary2,
              ),
              Text(
                "تفاصيل",
                style: TextStyle(
                    color: AppColors.onPrimary2,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
              alignment: Alignment.centerRight,
              width: 280,
              child: Text(" إلى ${endTime}  ${startTime}  - ${roomName}",
                  style: TextStyle(
                      color: AppColors.blackColor,
                      fontSize: 14,
                      fontWeight: FontWeight.bold))),
          const SizedBox(
            width: 20,
          ),
          Container(
            height: 35,
            width: 3,
            color: AppColors.onPrimary2,
          ),
        ],
      ),
    );
