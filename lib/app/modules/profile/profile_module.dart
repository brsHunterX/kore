// FLUTTER
import 'package:flutter_modular/flutter_modular.dart';

// THEME
import 'package:kore/shared/theme/app_themes.dart';

// REPOSITORIES
import 'package:kore/kernel/themefy/repositories/theme_repository.dart';

// CONTROLLERS
import 'package:kore/kernel/themefy/controllers/theme_controller.dart';
import 'package:kore/app/modules/profile/controllers/profile_controller.dart';

// PAGES
import 'package:kore/app/modules/profile/pages/profile_page.dart';

class ProfileModule extends ChildModule {
  
  @override
  List<Bind> get binds => [
    Bind((i) => ProfileController()),
    Bind((i) => ThemeController(ThemeRepository(AppThemes.themes))),
  ];

  @override
  List<Router> get routers => [
    Router(Modular.initialRoute, child: (_, args) => ProfilePage()),
  ];

  static Inject get to => Inject<ProfileModule>.of();
}
