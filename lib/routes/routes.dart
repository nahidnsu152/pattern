import 'package:get/get.dart';

import '../binding/dashboard_binding.dart';
import '../binding/splash_binding.dart';
import '../screens/dashboard/dashboard_screen.dart';
import '../screens/onboard/onboard_screen.dart';
import '../screens/splash/splash_screen.dart';

class Routes {
  static const String splashScreen = '/splashScreen';
  static const String onboardScreen = '/onBoardScreen';
  static const String welcomeScreen = '/welcomeScreen';
  static const String signinScreen = '/signinScreen';
  static const String otpScreen = '/otpScreen';
  static const String resetPasswordScreen = '/resetPasswordScreen';
  static const String signinConfirmationScreen = '/signinConfirmationScreen';
  static const String signupScreen = '/signupScreen';
  static const String phoneVerificationScreen = '/phoneVerificationScreen';
  static const String signupConfirmationScreen = '/signupConfirmationScreen';
  static const String dashboardScreen = '/dashboardScreen';

  static var list = [
    GetPage(
      name: splashScreen,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: onboardScreen,
      page: () => OnboardScreen(),
    ),
    GetPage(
      name: dashboardScreen,
      page: () => const DashboardScreen(),
      binding: DashboardBinding(),
    ),
  ];
}
