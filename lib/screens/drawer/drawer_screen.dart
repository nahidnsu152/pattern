// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:get/get.dart';

// import '../../controller/drawer_controller.dart';
// import '../../models/menu_item_model.dart';
// import 'drawer_menu_items.dart';

// class CustomDrawer extends GetView<CustomDrawerController> {
//   const CustomDrawer({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<CustomDrawerController>(builder: (controller) {
//       return customDrawer(context);
//     });
//   }

//   Widget customDrawer(context) {
//     return SafeArea(
//       bottom: false,
//       child: ClipRRect(
//         borderRadius: const BorderRadius.only(
//           topLeft: Radius.circular(35),
//         ),
//         child: Drawer(
//           backgroundColor: CustomColor.drawerBgColor,
//           child: ListView(
//             children: [
//               Padding(
//                 padding: EdgeInsets.only(
//                   top: 21.7.h,
//                   right: 28.w,
//                 ),
//                 child: Row(
//                   mainAxisAlignment: mainEnd,
//                   children: [
//                     SizedBox(
//                       width: 12.27.w,
//                       height: 12.27.h,
//                       child: IconButton(
//                         icon: const Icon(Icons.close),
//                         color: CustomColor.primaryColor,
//                         onPressed: () {
//                           Navigator.of(context).pop();
//                         },
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Column(
//                 crossAxisAlignment: crossCenter,
//                 children: [
//                   profileAvatar(),
//                   Text(
//                     Strings.name,
//                     style: CustomStyle.drawerTitleStyle,
//                   ),
//                   Text(
//                     Strings.id,
//                     style: CustomStyle.drawerSubtitleStyle,
//                   ),
//                 ],
//               ),
//               addVerticalSpace(35.5.h),
//               ...MenuItems.all.map(buildMenuItem).toList(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget profileAvatar() {
//     return Center(
//       child: Stack(
//         children: [
//           SizedBox(
//             width: 71.w,
//             height: 71.h,
//             child: CircleAvatar(
//               backgroundColor: Colors.white,
//               child: Container(
//                 width: 65.w,
//                 height: 65.h,
//                 decoration: const BoxDecoration(
//                   shape: BoxShape.circle,
//                   image: DecorationImage(
//                     fit: BoxFit.contain,
//                     image:
//                         ExactAssetImage("assets/images/dashboard/avatar.png"),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//             bottom: 10.h,
//             right: 2.w,
//             child: Container(
//               width: 14.w,
//               height: 14.h,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 border: Border.all(
//                   width: 3,
//                   color: Colors.transparent,
//                 ),
//                 color: CustomColor.onlineColor,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget buildMenuItem(MenuItemModel item) {
//     return Padding(
//       padding: EdgeInsets.only(left: 24.w),
//       child: Column(
//         children: [
//           ListTileTheme(
//             shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(Dimensions.radius * 3),
//               bottomLeft: Radius.circular(Dimensions.radius * 3),
//             )),
//             selectedTileColor: CustomColor.primaryColor.withOpacity(.2),
//             child: ListTile(
//               contentPadding: EdgeInsets.zero,
//               selected: controller.currentItem == item,
//               leading: Padding(
//                 padding: EdgeInsets.only(
//                   left: 23.3.w,
//                 ),
//                 child: SizedBox(
//                   height: 17.09.h,
//                   child: SvgPicture.asset(
//                     "assets/images/drawer/${item.icon}.svg",
//                   ),
//                 ),
//               ),
//               title: Text(
//                 item.title,
//                 style: CustomStyle.drawerTileStyle,
//                 textAlign: TextAlign.start,
//               ),
//               onTap: () {
//                 controller.onSelectedItem(item);
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
