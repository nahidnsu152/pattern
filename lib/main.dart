import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'controller/theme_controller.dart';
import 'helper/keyboard.dart';
import 'routes/routes.dart';
import 'theme/themes.dart';
import 'utils/strings.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final ThemeController _themeController = Get.put(ThemeController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return DismissKeyboard(
      child: ScreenUtilInit(
        designSize: const Size(414, 896),
        builder: (context, widget) => GetMaterialApp(
          builder: (context, widget) {
            ScreenUtil.init(context);
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: widget!,
            );
          },
          theme: Themes.lightTheme,
          darkTheme: Themes.darkTheme,
          themeMode: _themeController.theme,
          title: Strings.appName,
          debugShowCheckedModeBanner: false,
          navigatorKey: Get.key,
          initialRoute: Routes.splashScreen,
          getPages: Routes.list,
        ),
      ),
    );
  }
}
