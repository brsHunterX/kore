// FLUTTER
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

// THEMES
import 'package:kore/shared/theme/app_themes.dart';

// REPOSITORIES
import 'package:kore/kernel/themefy/repositories/theme_repository.dart';

// CONTROLLERS
import 'package:kore/app/app_controller.dart';
import 'package:kore/kernel/themefy/controllers/theme_controller.dart';

// MODULES
import 'package:kore/app/modules/home/home_module.dart';
import 'package:kore/app/modules/login/login_module.dart';
import 'package:kore/app/modules/profile/profile_module.dart';

// WIDGETS
import 'package:kore/app/app_widget.dart';

class AppModule extends MainModule {
  
  @override
  List<Bind> get binds => [
    Bind((i) => AppController()),
    Bind((i) => ThemeController(ThemeRepository(AppThemes.themes))),
  ];

  @override
  List<Router> get routers => [
    Router('/home', module: HomeModule()),
    Router('/login', module: LoginModule()),
    Router('/profile', module: ProfileModule()),
  ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
