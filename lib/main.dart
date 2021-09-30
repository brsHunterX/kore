import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kore/app/app_module.dart';
import 'package:kore/app/widgets/app_widget.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() async {

  await dotenv.load(fileName: '.env');

  // Comment this line if you want your app to accept screen rotation.
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  return runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}