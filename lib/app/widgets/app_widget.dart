import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:kore/shared/theme/themes/app_theme_dark.dart';
import 'package:kore/shared/theme/themes/app_theme_light.dart';
import 'package:kore/shared/theme/controllers/theme_controller.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final ThemeController themeController = Modular.get<ThemeController>();
    
    return Observer(
      builder: (BuildContext context) => MaterialApp(
        initialRoute: '/auth/',
        title: dotenv.get('APP_NAME'),
        theme: AppThemeLight.theme,
        darkTheme: AppThemeDark.theme,
        themeMode: themeController.themeMode,
        // theme: themeController.theme?.data,
        debugShowCheckedModeBanner: (
          dotenv.get('APP_ENV') == 'local' ||
          dotenv.get('APP_ENV') == 'staging' ||
          dotenv.get('APP_ENV') == 'homolog'
        ) ? true : false,
      ).modular()
    );
  }
}
