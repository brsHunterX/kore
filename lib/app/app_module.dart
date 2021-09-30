import 'package:kore/app/pages/wildcard_page.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:kore/app/modules/auth/auth_module.dart';
import 'package:kore/app/modules/home/home_module.dart';
import 'package:kore/shared/theme/themes/app_themes.dart';
import 'package:kore/app/modules/profile/profile_module.dart';
import 'package:kore/shared/theme/controllers/theme_controller.dart';
import 'package:kore/shared/theme/repositories/theme_repository.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
    Bind.factory((i) => ThemeRepository(AppThemes.themes)),
    Bind.singleton((i) => ThemeController(i())),
  ];

  @override
  List<ModularRoute> get routes => [
    ModuleRoute('/auth', module: AuthModule()),
    ModuleRoute('/home', module: HomeModule()),
    ModuleRoute('/profile', module: ProfileModule()),
    WildcardRoute(child: (context, args) => WildCardPage()),
  ];
}