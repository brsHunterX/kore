import 'package:kore/shared/theme/models/app_theme.dart';
import 'package:kore/shared/theme/themes/app_theme_dark.dart';
import 'package:kore/shared/theme/themes/app_theme_light.dart';

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