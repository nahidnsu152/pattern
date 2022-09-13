import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controller/onboard_controller.dart';
import '../utils/custom_style.dart';
import '../utils/size.dart';

class OnboardContent extends StatelessWidget {
  OnboardContent({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String image, title, subtitle;
  final _controller = Get.put(OnboardController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 410.w,
          height: 311.h,
          child: Image.asset(
            image,
          ),
        ),
        SizedBox(
          width: 284.w,
          height: 21.h,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: CustomStyle.onboardTitleStyle,
          ),
        ),
        SizedBox(
          width: 338.w,
          height: 33.h,
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: CustomStyle.onboardSubtitleStyle,
          ),
        ),
      ],
    );
  }
}
