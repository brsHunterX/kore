// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ThemeController on _ThemeControllerBase, Store {
  final _$themeAtom = Atom(name: '_ThemeControllerBase.theme');

  @override
  AppTheme get theme {
    _$themeAtom.reportRead();
    return super.theme;
  }

  @override
  set theme(AppTheme value) {
    _$themeAtom.reportWrite(value, super.theme, () {
      super.theme = value;
    });
  }

  final _$getCurrentThemeIdAsyncAction =
      AsyncAction('_ThemeControllerBase.getCurrentThemeId');

  @override
  Future<String> getCurrentThemeId() {
    return _$getCurrentThemeIdAsyncAction.run(() => super.getCurrentThemeId());
  }

  final _$_ThemeControllerBaseActionController =
      ActionController(name: '_ThemeControllerBase');

  @override
  List<AppTheme> getThemes() {
    final _$actionInfo = _$_ThemeControllerBaseActionController.startAction(
        name: '_ThemeControllerBase.getThemes');
    try {
      return super.getThemes();
    } finally {
      _$_ThemeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  AppTheme getTheme(String id) {
    final _$actionInfo = _$_ThemeControllerBaseActionController.startAction(
        name: '_ThemeControllerBase.getTheme');
    try {
      return super.getTheme(id);
    } finally {
      _$_ThemeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTheme(AppTheme theme) {
    final _$actionInfo = _$_ThemeControllerBaseActionController.startAction(
        name: '_ThemeControllerBase.setTheme');
    try {
      return super.setTheme(theme);
    } finally {
      _$_ThemeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
theme: ${theme}
    ''';
  }
}
