import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../controller/dashboard_controller.dart';
import '../../utils/custom_color.dart';
import '../../utils/custom_style.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DashboardController dashboardController =
        Get.put(DashboardController(), permanent: false);
    return Scaffold(
      bottomNavigationBar:
          buildBottomNavigationMenu(context, dashboardController),
      body: Obx(
        () => IndexedStack(
          index: dashboardController.tabIndex.value,
          children:  const [
           // HomeScreen(),
            // CategoriesScreen(),
            // PurchasedScreen(),
            // NotificationsScreen(),
          ],
        ),
      ),
    );
  }

  buildBottomNavigationMenu(context, dashboardController) {
    return Obx(
      () => BottomNavigationBar(
        showSelectedLabels: true,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: CustomStyle.bottomNavStyle,
        unselectedLabelStyle: CustomStyle.bottomNavStyle,
        onTap: dashboardController.changeTabIndex,
        currentIndex: dashboardController.tabIndex.value,
        backgroundColor: CustomColor.secondaryColor,
        unselectedItemColor: Colors.white.withOpacity(0.5),
        selectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: _bottomNavIconBuilder(
              isSelected: dashboardController.tabIndex == 0,
              logo: 'home',
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: _bottomNavIconBuilder(
              isSelected: dashboardController.tabIndex == 1,
              logo: 'cart',
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: _bottomNavIconBuilder(
              isSelected: dashboardController.tabIndex == 2,
              logo: 'history',
            ),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: _bottomNavIconBuilder(
              isSelected: dashboardController.tabIndex == 3,
              logo: 'contact',
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget _bottomNavIconBuilder({
    required bool isSelected,
    required String logo,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: 5.8.h),
      child: SvgPicture.asset(
        "assets/images/dashboard/$logo.svg",
        height: 16.h,
        width: 16.w,
        color: isSelected ? Colors.white : Colors.white.withOpacity(0.5),
      ),
    );
  }
}
