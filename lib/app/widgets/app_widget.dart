import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:kore/l10n/L10n.dart';
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
        initialRoute: '/home/',
        title: dotenv.get('APP_NAME'),
        theme: AppThemeLight.theme,
        darkTheme: AppThemeDark.theme,
        themeMode: themeController.themeMode,
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: L10n.all,
        debugShowCheckedModeBanner: (
          dotenv.get('APP_ENV') == 'local' ||
          dotenv.get('APP_ENV') == 'staging' ||
          dotenv.get('APP_ENV') == 'homolog'
        ) ? true : false,
      ).modular()
    );
  }
}
