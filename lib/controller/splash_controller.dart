import 'dart:async';

import 'package:get/get.dart';
import '../helper/pref_helper.dart';
import '../routes/routes.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    navigate();
  }

  Future<void> navigate() async {
    // Timer(const Duration(seconds: 1), () {
    //   PrefHelper.isCompleted()
    //       ? Get.offAllNamed(Routes.welcomeScreen)
    //       : Get.offAndToNamed(Routes.onboardScreen);
    // });
    Get.offAllNamed(Routes.onboardScreen);
  }
}
