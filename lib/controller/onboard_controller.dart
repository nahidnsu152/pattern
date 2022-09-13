import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helper/pref_helper.dart';
import '../models/onboard_model.dart';
import '../routes/routes.dart';
import '../utils/custom_color.dart';
import '../utils/dimensions.dart';
import '../utils/strings.dart';
import '../widgets/buttons/default_button.dart';

class OnboardController extends GetxController {
  var selectedIndex = 0.obs;
  var pageController = PageController();

  bool get isLastPage => selectedIndex.value == onboardData.length - 1;
  bool get isFirstPage => selectedIndex.value == 0;
  bool get isSecondPage => selectedIndex.value == 1;
  bool get isThirdPage => selectedIndex.value == 2;

  void nextPage() {
    if (isLastPage) {
      PrefHelper.saveIntroStatus(
        isCompleted: true,
      );
    } else {
      pageController.nextPage(
        duration: 300.milliseconds,
        curve: Curves.ease,
      );
    }
  }

  pageNavigate() {
    PrefHelper.saveIntroStatus(
      isCompleted: true,
    );
    Get.toNamed(
      Routes.welcomeScreen,
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 30.w),
      height: 16.h,
      width: 16.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: index! <= selectedIndex.value
            ? CustomColor.secondaryColor
            : Colors.black.withOpacity(0.5),
        border: Border.all(
          color: Colors.transparent,
          width: 1.w,
        ),
      ),
    );
  }

  dotWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        onboardData.length,
        (index) => buildDot(index: index),
      ),
    );
  }

  buttonWidget() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 36.w,
      ),
      child: SizedBox(
        width: 294.78.w,
        height: 47.3.h,
        child: DefaultButton(
          title: isLastPage ? Strings.getStarted.tr : Strings.next.tr,
          onPresssed: () {
            isLastPage ? pageNavigate() : nextPage();

            if (isLastPage) {
              PrefHelper.saveIntroStatus(
                isCompleted: true,
              );
              pageNavigate();
            } else {
              nextPage();
            }
          },
        ),
      ),
    );
  }
}
