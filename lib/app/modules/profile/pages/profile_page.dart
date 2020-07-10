// FLUTTER
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

// CONTROLLERS
import 'package:kore/app/modules/profile/controllers/profile_controller.dart';
import 'package:kore/kernel/themefy/controllers/theme_controller.dart';
import 'package:kore/kernel/themefy/widgets/theme_dialog.dart';

class ProfilePage extends StatefulWidget {
  
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends ModularState<ProfilePage, ProfileController> {

  final ThemeController themeController = Modular.get<ThemeController>();

  @override
  // TODO: implement controller
  ProfileController get controller => super.controller;

  Widget _buildUserTile() {

    return ListTile(
      title: Text('Bruno Santos'),
      subtitle: Text('bruno.dos1997@gmail.com'),
    );
  }
  
  Widget _buildThemeTile() {

    return ListTile(
      leading: Icon(Icons.palette),
      title: Text('Change theme'),
      subtitle: Text('Select your favorite theme colors.'),
      onTap: () => showDialog(
        context:  context,
        builder:  (BuildContext context) => ThemeDialog(controller: themeController,)
      ),
    );
  }
  
  Widget _buildSignOutTile() {

    return ListTile(
      leading: Icon(Icons.exit_to_app),
      title: Text('Sign Out'),
    );
  }

  Widget _buildListView() {

    return ListView(
      padding: EdgeInsets.symmetric(
        vertical: 20.0,
      ),
      children: <Widget>[
        _buildUserTile(),
        Divider(),
        _buildThemeTile(),
        Divider(),
        _buildSignOutTile()
      ],
    );
  }

  Widget _buildBody() {

    return RefreshIndicator(
      onRefresh: () {},
      child: _buildListView(),
    );
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: _buildBody(),
    );
  }
}
