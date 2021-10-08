import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kore/app/modules/home/controllers/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final HomeController homeController = Modular.get<HomeController>();
  
  Widget _buildAppBar() {
    
    final IconButton profile = IconButton(
      icon: Icon(Icons.account_circle),
      onPressed: () => Modular.to.pushNamed('/profile/'),
    );

    return AppBar(
      title: Text('Kore'),
      actions: <Widget>[
        profile,
      ],
    );
  }

  Widget _buildBody() {
    
    return Observer(
      builder: (context) =>  SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(AppLocalizations.of(context).hello_world, style: Theme.of(context).textTheme.headline3),
            Text('Tap in button to increase counter.'),
            Text(this.homeController.counter, style: Theme.of(context).textTheme.headline3),
          ],
        ),
      ),
    );
  }

  Widget _buildFloatActionButton() {
    
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () => homeController.increment(),
    );
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: _buildBody(),
      appBar: _buildAppBar(),
      floatingActionButton: _buildFloatActionButton(),
    );
  }
}
