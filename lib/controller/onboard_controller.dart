import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pattern/models/onboard_model.dart';
import 'package:pattern/routes/routes.dart';
import 'package:pattern/utils/custom_color.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class OnboardController extends GetxController {
  var selectedIndex = 0.obs;
  var pageController = PageController();

  bool get isLastPage => selectedIndex.value == onboardData.length - 1;
  bool get isFirstPage => selectedIndex.value == 0;
  bool get isSecondPage => selectedIndex.value == 1;
  bool get isThirdPage => selectedIndex.value == 3;

  void nextPage() {
    if (isLastPage) {
      // Get.toNamed(
      //   Routes.homeScreen,
      // );
    } else {
      pageController.nextPage(
        duration: 300.milliseconds,
        curve: Curves.ease,
      );
    }
  }

  void backPage() {
    pageController.previousPage(
      duration: 300.milliseconds,
      curve: Curves.ease,
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 5.w),
      height: 16.h,
      width: 16.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: index! <= selectedIndex.value
            ? CustomColor.primaryColor
            : Colors.white,
        border: Border.all(
          color: index <= selectedIndex.value
              ? CustomColor.primaryColor
              : CustomColor.secondaryColor,
          width: 1.w,
        ),
      ),
    );
  }

  AnimatedContainer buildDot1({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 5.w),
      height: 16.h,
      width: 16.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: index == selectedIndex.value
            ? CustomColor.primaryColor
            : Colors.white,
        border: Border.all(
          color: index == selectedIndex.value
              ? CustomColor.primaryColor
              : CustomColor.secondaryColor,
          width: 1.w,
        ),
      ),
    );
  }

  // buildDot2({required int index}) {
  //   return AnimatedContainer(
  //     duration: const Duration(milliseconds: 200),
  //     margin: EdgeInsets.only(right: 10.w),
  //     height: 10.h,
  //     width: 10.w,
  //     child: Container(
  //       decoration: BoxDecoration(
  //         color: index == selectedIndex.value
  //             ? CustomColor.primaryColor
  //             : Colors.white,
  //         borderRadius: BorderRadius.circular(30.r),
  //         border: Border.all(
  //           color: index == selectedIndex.value
  //               ? CustomColor.primaryColor
  //               : CustomColor.secondaryColor,
  //           width: 1.w,
  //         ),
  //       ),
  //     ),
  //   );
  // }

  AnimatedContainer buildDot2({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 10,
      width: selectedIndex.value == index ? 25 : 10,
      margin: const EdgeInsets.only(right: 5),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: index == selectedIndex.value
              ? CustomColor.primaryColor
              : Colors.white,
          border: Border.all(
            color: index == selectedIndex.value
                ? CustomColor.primaryColor
                : CustomColor.secondaryColor,
            width: 1.w,
          ),
        ),
      ),
    );
  }

  dotWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        onboardData.length,
        (index) => buildDot(
          index: index,
        ),
      ),
    );
  }

  dotWidget1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        onboardData.length,
        (index) => buildDot1(
          index: index,
        ),
      ),
    );
  }

  dotWidget2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        onboardData.length,
        (index) => buildDot2(
          index: index,
        ),
      ),
    );
  }

  linearPercentWidget() {
    return SizedBox(
      height: 50.h,
      child: LinearPercentIndicator(
        backgroundColor: Colors.grey,
        lineHeight: 5,
        progressColor: Colors.red,
        percent: isFirstPage
            ? 0.33
            : isSecondPage
                ? 0.66
                : 1,
      ),
    );
  }
}
