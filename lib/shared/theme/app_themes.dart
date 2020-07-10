// MODELS
import 'package:kore/kernel/themefy/models/app_theme.dart';

// THEMES
import 'package:kore/shared/theme/app_theme_dark.dart';
import 'package:kore/shared/theme/app_theme_light.dart';


class AppThemes {

  AppThemes._();

  static final List<AppTheme> themes = [
    AppTheme(
      id: 'light',
      label: 'Light',
      description: 'Default Theme Light',
      data: AppThemeLight.theme,
    ),
    AppTheme(
      id: 'dark',
      label: 'Dark',
      description: 'Default Theme Dark',
      data: AppThemeDark.theme,
    ),
  ];
}