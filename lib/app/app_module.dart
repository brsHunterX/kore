import 'package:kore/app/pages/wildcard_page.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:kore/app/modules/auth/auth_module.dart';
import 'package:kore/app/modules/home/home_module.dart';
import 'package:kore/app/modules/profile/profile_module.dart';
import 'package:kore/shared/theme/controllers/theme_controller.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
    Bind.singleton((i) => ThemeController()),
  ];

  @override
  List<ModularRoute> get routes => [
    ModuleRoute('/auth', module: AuthModule()),
    ModuleRoute('/home', module: HomeModule()),
    ModuleRoute('/profile', module: ProfileModule()),
    WildcardRoute(child: (context, args) => WildCardPage()),
  ];
}