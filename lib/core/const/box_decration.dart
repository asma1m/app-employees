import 'package:flutter/widgets.dart';

import '../theme/app_color.dart';

class GlobalBoxDecration {
  static BoxDecoration boxDecoration(BuildContext context) {
    return BoxDecoration(gradient: AppColors.backgroundColor);
  }
}
