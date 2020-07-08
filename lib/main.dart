// FLUTTER
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_modular/flutter_modular.dart';

// MODULES
import 'package:kore/app/app_module.dart';

void main() async {
  
  await DotEnv().load('.env');

  // Comment this line if you want your app to accept screen rotation.
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(ModularApp(module: AppModule()));
}
