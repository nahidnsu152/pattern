import 'package:flutter/material.dart';
import 'custom_color.dart';
import 'dimensions.dart';

class CustomStyle {
  static var buttonTextStyle = TextStyle(
    fontSize: Dimensions.defaultButtonTextSize,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static var inputTextStyle = TextStyle(
    fontSize: Dimensions.hintTextSize,
    fontWeight: FontWeight.w500,
    color: CustomColor.secondaryColor.withOpacity(0.5),
  );

  static var hintTextStyle = TextStyle(
    fontSize: Dimensions.hintTextSize,
    fontWeight: FontWeight.w500,
    color: CustomColor.secondaryColor.withOpacity(0.5),
  );

  //? Onboard Style
  static var onboardSkipStyle = TextStyle(
    fontSize: Dimensions.defaultTextSize,
    fontWeight: FontWeight.bold,
    color: CustomColor.primaryColor,
  );

  static var onboardTitleStyle = TextStyle(
    fontSize: Dimensions.bigTextSize,
    fontWeight: FontWeight.bold,
    color: CustomColor.secondaryColor,
  );

  static var onboardSubtitleStyle = TextStyle(
    fontSize: Dimensions.mediumTextSize,
    fontWeight: FontWeight.w600,
    color: CustomColor.secondaryColor,
  );

  //? Welcome Screen
  static var welcomeTitleStyle = TextStyle(
    fontSize: Dimensions.bigTextSize,
    fontWeight: FontWeight.bold,
    color: CustomColor.secondaryColor,
  );

  static var welcomeSubtitleStyle = TextStyle(
    fontSize: Dimensions.mediumTextSize,
    fontWeight: FontWeight.w500,
    color: CustomColor.secondaryColor,
  );

  static var selectLanguageStyle = TextStyle(
    fontSize: Dimensions.mediumTextSize,
    fontWeight: FontWeight.w600,
    color: CustomColor.secondaryColor,
  );

  static var selectLanguageHintStyle = TextStyle(
    fontSize: Dimensions.selectLanguageHintTextSize,
    fontWeight: FontWeight.bold,
    color: CustomColor.primaryColor,
  );

  //? Auth Screen

  static var authTitleStyle = TextStyle(
    fontSize: Dimensions.authTitleTextSize,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static var authSubtitleStyle = TextStyle(
    fontSize: Dimensions.mediumTextSize,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  static var noAccountStyle = TextStyle(
    fontSize: Dimensions.defaultTextSize,
    fontWeight: FontWeight.w500,
    color: CustomColor.secondaryColor.withOpacity(0.9),
  );

  static var forgotPassTextStyle = TextStyle(
    fontSize: Dimensions.defaultTextSize,
    fontWeight: FontWeight.w500,
    color: CustomColor.secondaryColor,
  );

  static var forgotPassDialogueTextStyle = TextStyle(
    fontSize: Dimensions.biggestTextSize,
    fontWeight: FontWeight.bold,
    color: CustomColor.secondaryColor,
  );
  static var typeEmailTextStyle = TextStyle(
    fontSize: Dimensions.defaultTextSize,
    fontWeight: FontWeight.w500,
    color: CustomColor.secondaryColor,
  );

  static var otpVerificationTextStyle = TextStyle(
    fontSize: Dimensions.otpVerficationTextSize,
    fontWeight: FontWeight.bold,
    color: CustomColor.secondaryColor,
  );

  static var enterCodeTextStyle = TextStyle(
    fontSize: Dimensions.mediumTextSize,
    fontWeight: FontWeight.w500,
    color: CustomColor.secondaryColor,
  );

  static var otpTimeoutTextStyle = TextStyle(
    fontSize: Dimensions.mediumTextSize,
    fontWeight: FontWeight.bold,
    color: CustomColor.secondaryColor,
  );

  static var resendCodeTextStyle = TextStyle(
    fontSize: Dimensions.defaultTextSize,
    color: CustomColor.secondaryColor,
  );

  static var congratulationsTitleTextStyle = TextStyle(
    fontSize: Dimensions.congratulationsTitleTextSize,
    fontWeight: FontWeight.bold,
    color: CustomColor.secondaryColor,
  );

  static var congratulationsSubtitleTextStyle = TextStyle(
    fontSize: Dimensions.mediumTextSize,
    fontWeight: FontWeight.w500,
    color: CustomColor.secondaryColor,
  );

  static var termsTextStyle = TextStyle(
    fontSize: Dimensions.defaultTextSize,
    fontWeight: FontWeight.w500,
    color: CustomColor.secondaryColor,
  );

  //? Dashboard Screen
  static var bottomNavStyle = TextStyle(
    fontSize: Dimensions.smallestTextSize,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  //? Home Screen
  static var sectionTitleStyle = TextStyle(
    fontSize: Dimensions.defaultTextSize,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static var categoriesTextStyle = TextStyle(
    fontSize: Dimensions.smallTextSize,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static var categoriesListTileTitleTextStyle = TextStyle(
    fontSize: Dimensions.bigTextSize,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static var categoriesListTileSubtitleTextStyle = TextStyle(
    fontSize: Dimensions.mediumTextSize,
    fontWeight: FontWeight.bold,
    color: CustomColor.listTileSubtitleColor,
  );

  static var categoriesListTileSubtitle2TextStyle = TextStyle(
    fontSize: Dimensions.categoriesTileSubtitle2TextSize,
    fontWeight: FontWeight.bold,
    color: Colors.black.withOpacity(0.5),
    decoration: TextDecoration.lineThrough,
  );
  static var categoriesListTileSubtitle3TextStyle = TextStyle(
    fontSize: Dimensions.smallTextSize,
    fontWeight: FontWeight.w500,
    color: Colors.black.withOpacity(0.8),
  );
  static var addToCartTextStyle = TextStyle(
    fontSize: Dimensions.addToCartTextSize,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  //? Drawer Screen

  static var drawerTitleStyle = TextStyle(
    fontSize: Dimensions.drawerHeaderTitleTextSize,
    fontWeight: FontWeight.w900,
    color: CustomColor.primaryColor,
  );
  static var drawerSubtitleStyle = TextStyle(
    fontSize: Dimensions.drawerHeaderSubtitleTextSize,
    fontWeight: FontWeight.w500,
    color: CustomColor.primaryColor.withOpacity(0.7),
  );
  static var drawerTileStyle = TextStyle(
    fontSize: Dimensions.drawerTileTextSize,
    fontWeight: FontWeight.w500,
    color: CustomColor.primaryColor,
  );
}
