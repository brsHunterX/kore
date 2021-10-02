import 'package:mobx/mobx.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'theme_controller.g.dart';

class ThemeController = _ThemeControllerBase with _$ThemeController;

abstract class _ThemeControllerBase with Store {

  @observable
  ThemeMode _themeMode = ThemeMode.system;

  ThemeMode get themeMode => _themeMode;

  bool get isDark => _themeMode == ThemeMode.dark;

  @action
  void changeTheme(ThemeMode themeMode) {
    this._themeMode = themeMode;
  }

  @action
  void toggleTheme() {
    if (isDark) {
      this.changeTheme(ThemeMode.light);
    } else {
      this.changeTheme(ThemeMode.dark);
    }
  }
}
