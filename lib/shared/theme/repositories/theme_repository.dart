import 'package:kore/shared/theme/models/app_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeRepository {
  final List<AppTheme> themes;

  ThemeRepository(
    this.themes,
  ) : assert(themes != null) {
    _initialize();
  }

  //
  void _initialize() {
    if (themes.length <= 0) {
      throw Exception('themefy_error: You must at least have a registered theme.');
    }
  }

  //
  Future saveThemeIdPreference(String id) async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();

    preferences.setString('THEME_ID', id);
  }

  //
  Future<String> loadThemeIdPreference() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();

    if (preferences.containsKey('THEME_ID')) {
      return preferences.getString('THEME_ID');
    }

    return '';
  }

  //
  Future<String> getCurrentThemeId() async {
    final String themeId = await loadThemeIdPreference();

    if (themeId.isNotEmpty) {
      return themeId;
    } else {
      return themes.first.id;
    }
  }

  //
  List<AppTheme> getThemes() {
    return themes;
  }

  //
  AppTheme getTheme(String id) {
    final AppTheme theme =  themes.firstWhere((AppTheme theme) => theme.id == id);

    if (theme == null) {
      throw Exception('Theme not found.');
    }

    return theme;
  }
}
