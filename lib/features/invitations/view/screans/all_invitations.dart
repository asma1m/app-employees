import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widget/custom_app_bar.dart';
import '../../../../core/routes/routes.dart';
import '../../logic/controller.dart';
import '../widget/invitation_card.dart';
import 'invitation.dart';

// ignore: must_be_immutable
class AllInvitations extends StatelessWidget {
  AllInvitations({super.key});
  // ignore: prefer_typing_uninitialized_variables

  InvitationController controller =
      Get.put(InvitationController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<InvitationController>(
      builder: (controller) => Scaffold(
        appBar: CustomAppBar(
          title: "الدعوات",
          onTap: () {
            Get.offAllNamed(Routs.mainScreen);
          },
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: Get.width * 0.05,
            ),
            SizedBox(
              height: Get.height * 0.69,
              child: ListView.builder(
                itemCount: controller.invitations.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Invitation(
                              name: controller.invitations[index]['place']
                                  .toString(),
                              startTime: controller.invitations[index]
                                      ['startTime']
                                  .toString(),
                              endTime: controller.invitations[index]['endTime']
                                  .toString(),
                              place: controller.invitations[index]['roomName'],
                            ),
                          ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: cardInvi(
                          controller.invitations[index]['place'],
                          controller.invitations[index]['startTime'],
                          controller.invitations[index]['endTime']),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
