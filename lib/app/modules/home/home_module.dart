import 'package:flutter_modular/flutter_modular.dart';
import 'package:kore/app/modules/home/pages/home_page.dart';
import 'package:kore/app/modules/home/controllers/home_controller.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [
    Bind.singleton((i) => HomeController()),
  ];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args) => const HomePage()),
  ];
}