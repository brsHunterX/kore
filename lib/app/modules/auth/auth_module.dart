import 'package:flutter_modular/flutter_modular.dart';
import 'package:kore/app/modules/auth/pages/login_page.dart';
import 'package:kore/app/modules/auth/pages/sign_in_page.dart';
import 'package:kore/app/modules/auth/pages/sign_up_page.dart';

class AuthModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args) => const LoginPage()),
    ChildRoute('/sign-in', child: (context, args) => const SignInPage()),
    ChildRoute('/sign-up', child: (context, args) => const SignUpPage()),
  ];
}