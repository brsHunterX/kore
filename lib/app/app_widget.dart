// FLUTTER
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_modular/flutter_modular.dart';

// CONTROLLERS
import 'package:kore/kernel/themefy/controllers/theme_controller.dart';


class AppWidget extends StatelessWidget {

  final ThemeController themeController = Modular.get<ThemeController>();

  @override
  Widget build(BuildContext context) {

    return Observer(
      builder: (BuildContext context) => MaterialApp(
        initialRoute: '/login',
        title: DotEnv().env['APP_ENV'],
        theme: themeController.theme?.data,
        navigatorKey: Modular.navigatorKey,
        onGenerateRoute: Modular.generateRoute,
        debugShowCheckedModeBanner: (
          DotEnv().env['APP_ENV'] == 'local' ||
          DotEnv().env['APP_ENV'] == 'staging' ||
          DotEnv().env['APP_ENV'] == 'homolog'
        ) ? true : false,
      ),
    );
  }
}
