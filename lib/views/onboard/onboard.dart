import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../controller/onboard_controller.dart';
import '../../helper/pref_helper.dart';
import '../../models/onboard_model.dart';
import '../../utils/custom_style.dart';
import '../../utils/strings.dart';
import '../../widgets/onboard_content.dart';
import '../../utils/size.dart';

class OnboardScreen extends StatelessWidget {
  OnboardScreen({Key? key}) : super(key: key);
  final _controller = Get.put(OnboardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: crossCenter,
        children: [
          addVerticalSpace(64.8.h),
          Obx(
            () => _controller.isLastPage
                ? SizedBox(
                    child: Text(
                      "",
                      style: CustomStyle.onboardSkipStyle,
                    ),
                  )
                : Row(
                    mainAxisAlignment: mainEnd,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 41.w),
                        child: GestureDetector(
                          onTap: () {
                            PrefHelper.saveIntroStatus(isCompleted: true);
                            _controller.pageNavigate();
                          },
                          child: Text(
                            Strings.skip.tr,
                            style: CustomStyle.onboardSkipStyle,
                          ),
                        ),
                      ),
                    ],
                  ),
          ),
          addVerticalSpace(93.2.h),
          SizedBox(
            height: 387.h,
            child: PageView.builder(
              controller: _controller.pageController,
              onPageChanged: _controller.selectedIndex,
              itemCount: onboardData.length,
              itemBuilder: (context, index) {
                return OnboardContent(
                  image: onboardData[index].image,
                  title: onboardData[index].title,
                  subtitle: onboardData[index].subtitle,
                );
              },
            ),
          ),
          addVerticalSpace(60.h),
          Obx(
            () => _controller.dotWidget(),
          ),
          addVerticalSpace(30.h),
          Obx(
            () => _controller.buttonWidget(),
          ),
          addVerticalSpace(60.h),
        ],
      ),
    );
  }
}
