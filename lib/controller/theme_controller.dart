import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeController extends GetxController {
  final _box = GetStorage();
  final _key = "isDarkMode";

  ThemeMode get theme => _loadThemeFromBox()
      ? ThemeMode.dark
      : ThemeMode
          .light; //? Get isDarkMode info from local storage and return ThemeMode

  bool _loadThemeFromBox() =>
      _box.read(_key) ??
      false; //? Load isDArkMode from local storage and if it's empty, returns false (that means default theme is light

  _saveThemeToBox(bool isDarkMode) =>
      _box.write(_key, isDarkMode); //? Save isDarkMode to local storage

  void switchTheme() {
    Get.changeThemeMode(_loadThemeFromBox() ? ThemeMode.light : ThemeMode.dark);
    _saveThemeToBox(
      !_loadThemeFromBox(),
    ); //? Switch theme and save to local storage
  }

  bool themeCheck() => _box.read(_key) ?? false; //? Checking current theme

}
