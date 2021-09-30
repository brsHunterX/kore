import 'package:flutter_modular/flutter_modular.dart';
import 'package:kore/app/modules/profile/pages/profile_page.dart';

class ProfileModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args) => const ProfilePage()),
  ];
}