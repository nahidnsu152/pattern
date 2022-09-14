import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pattern/helper/pref_helper.dart';

import '../../controller/onboard_controller.dart';
import '../../models/onboard_model.dart';
import '../../utils/size.dart';
import '../../utils/strings.dart';
import '../../widgets/buttons/default_button.dart';
import 'onboard_content.dart';

class OnboardScreen extends StatelessWidget {
  OnboardScreen({Key? key}) : super(key: key);
  final _controller = Get.put(OnboardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          SizedBox(
            height: 415.h,
            child: PageView.builder(
              controller: _controller.pageController,
              onPageChanged: _controller.selectedIndex,
              itemCount: onboardData.length,
              itemBuilder: (context, index) {
                return OnboardContent(
                  image: onboardData[index].image,
                  title: onboardData[index].title,
                  description: onboardData[index].description,
                );
              },
            ),
          ),
          Obx(
            () => _controller.dotWidget(),
          ),
          addVerticalSpace(10.h),
          Obx(
            () => _controller.dotWidget1(),
          ),
          addVerticalSpace(10.h),
          Obx(
            () => _controller.dotWidget2(),
          ),
          addVerticalSpace(20.h),
          Obx(
            () => _controller.linearPercentWidget(),
          ),
          addVerticalSpace(14.h),
          Obx(
            () => SizedBox(
              width: 100.w,
              height: 30.h,
              child: DefaultButton(
                title:
                    _controller.isLastPage ? Strings.getStarted : Strings.next,
                onPresssed: () {
                  if (_controller.isLastPage) {
                    // save intro completed status on local storage
                    PrefHelper.saveIntroStatus(
                      isCompleted: true,
                    );
                    // Get.toNamed(
                    //   Routes.homeScreen,
                    // );
                  } else {
                    _controller.nextPage();
                  }
                },
              ),
            ),
          ),
          addVerticalSpace(14.h),
          Obx(
            () => _controller.isLastPage
                ? Container()
                : GestureDetector(
                    onTap: () {
                      PrefHelper.saveIntroStatus(isCompleted: true);
                      // Get.offAllNamed(Routes.homeScreen);
                    },
                    child: const Text(
                      "Skip",
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
