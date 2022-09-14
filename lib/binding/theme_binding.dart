import 'package:get/get.dart';
import 'package:pattern/controller/theme_controller.dart';

class ThemeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(
      ThemeController(),
    );
  }
}
