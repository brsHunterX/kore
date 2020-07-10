// FLUTTER
import 'package:flutter_modular/flutter_modular.dart';

// CONTROLLERS
import 'package:kore/app/modules/home/controllers/home_controller.dart';

// MODULES
import 'package:kore/app/modules/profile/profile_module.dart';

// PAGES
import 'package:kore/app/modules/home/pages/home_page.dart';

class HomeModule extends ChildModule {
  
  @override
  List<Bind> get binds => [
    Bind((i) => HomeController()),
  ];

  @override
  List<Router> get routers => [
    Router(Modular.initialRoute, child: (_, args) => HomePage()),
    Router('/profile', module: ProfileModule()),
  ];

  static Inject get to => Inject<HomeModule>.of();
}
