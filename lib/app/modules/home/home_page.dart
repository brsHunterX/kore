// FLUTTER
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

// CONTROLLERS
import 'package:kore/app/modules/home/home_controller.dart';

class HomePage extends StatefulWidget {
  
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  
  @override
  // TODO: implement controller
  HomeController get controller => super.controller;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      body: Center(
        child: Text('Welcome to Kore :D'),
      )
    );
  }
}
