import 'package:mobx/mobx.dart';
import 'package:kore/shared/theme/models/app_theme.dart';
import 'package:kore/shared/theme/repositories/theme_repository.dart';

part 'theme_controller.g.dart';

class ThemeController = _ThemeControllerBase with _$ThemeController;

abstract class _ThemeControllerBase with Store {
  final ThemeRepository repository;

  _ThemeControllerBase(
    this.repository,
  ) : assert(repository != null) {
    _initialize();
  }

  @observable
  AppTheme theme;

  //
  void _initialize() async {
    final String themeId = await getCurrentThemeId();

    setTheme(getTheme(themeId));
  }

  //
  @action
  Future<String> getCurrentThemeId() async {
    return await repository.getCurrentThemeId();
  }

  //
  @action
  List<AppTheme> getThemes() {
    return repository.getThemes();
  }

  //
  @action
  AppTheme getTheme(String id) {
    return repository.getTheme(id);
  }

  //
  @action
  void setTheme(AppTheme theme) {
    repository
        .saveThemeIdPreference(theme.id)
        .then((value) => this.theme = theme);
  }
}
