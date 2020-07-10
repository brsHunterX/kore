// FLUTTER
import 'package:flutter_modular/flutter_modular.dart';

// CONTROLLER
import 'package:kore/app/modules/login/controllers/login_controller.dart';

// PAGES
import 'package:kore/app/modules/login/pages/login_page.dart';
import 'package:kore/app/modules/login/pages/sign_in_page.dart';
import 'package:kore/app/modules/login/pages/sign_up_page.dart';

class LoginModule extends ChildModule {
  
  @override
  List<Bind> get binds => [
    Bind((i) => LoginController()),
  ];

  @override
  List<Router> get routers => [
    Router(Modular.initialRoute, child: (_, args) => LoginPage()),
    Router('/sign-in', child: (_, args) => SignInPage()),
    Router('/sign-up', child: (_, args) => SignUpPage()),
  ];

  static Inject get to => Inject<LoginModule>.of();
}
