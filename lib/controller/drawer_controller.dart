import 'package:get/get.dart';
import '../screens/drawer/drawer_menu_items.dart';

class CustomDrawerController extends GetxController {
  var currentItem = MenuItems.subscribedChannel;

  onSelectedItem(item) {
    currentItem = item;
    update();
  }
}
