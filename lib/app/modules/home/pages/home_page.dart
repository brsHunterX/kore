// FLUTTER
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

// CONTROLLERS
import 'package:kore/app/modules/home/controllers/home_controller.dart';

class HomePage extends StatefulWidget {
  
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  
  @override
  // TODO: implement controller
  HomeController get controller => super.controller;

  Widget _buildAppBar() {

    final IconButton profile = IconButton(
      icon: Icon(Icons.account_circle),
      onPressed: () => Modular.link.pushNamed('/profile'),
    );

    return AppBar(
      title: Text('Welcome'),
      actions: <Widget>[
        profile,
      ],
    );
  }

  Widget _buildBody() {

    return Center(
      child: Text('Welcome to Kore :D'),
    );
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }
}
