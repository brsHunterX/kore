// FLUTTER
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

// CONTROLLERS
import 'package:kore/app/app_controller.dart';

// MODULES
import 'package:kore/app/modules/home/home_module.dart';

// WIDGETS
import 'package:kore/app/app_widget.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
    Bind((i) => AppController()),
  ];

  @override
  List<Router> get routers => [
    Router(Modular.initialRoute, module: HomeModule()),
  ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
