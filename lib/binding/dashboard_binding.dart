import 'package:get/get.dart';

import '../controller/drawer_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CustomDrawerController());

  }
}
