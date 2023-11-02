import 'package:employees_app/core/theme/app_color.dart';
import 'package:flutter/material.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({super.key, this.title, this.onTap});
  String? title;
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: AppColors.onPrimary2,
        actions: [
          if (title != null)
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                title!,
                style: const TextStyle(color: Colors.white, fontSize: 26),
              ),
            ),
          if (title == null)
            actionsButton(
                icons: const Icon(
                  Icons.add,
                  size: 20,
                ),
                onTap: onTap,
                nullTitle: false)
        ],
        leading: onTap != null
            ? actionsButton(
                icons: const Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                ),
                onTap: onTap,
                nullTitle: true)
            : const SizedBox());
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  Widget actionsButton(
      {Function()? onTap, required Icon icons, required bool nullTitle}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 40,
          width: 40,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: AppColors.onPrimary),
          child: Center(
              child: Padding(
            padding: EdgeInsets.only(left: nullTitle ? 5 : 0),
            child: icons,
          )),
        ),
      ),
    );
  }
}
