import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../controller/onboard_controller.dart';
import '../../utils/size.dart';

class OnboardContent extends StatelessWidget {
  OnboardContent({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String image, title, description;
  final _controller = Get.find<OnboardController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        addVerticalSpace(146.h),
        Image.asset(
          image,
        ),
        _controller.isFirstPage
            ? addVerticalSpace(32.h)
            : _controller.isSecondPage
                ? addVerticalSpace(38.h)
                : addVerticalSpace(32.h),
        Text(
          title,
        ),
        addVerticalSpace(20.h),
        Text(
          description,
        ),
      ],
    );
  }
}
