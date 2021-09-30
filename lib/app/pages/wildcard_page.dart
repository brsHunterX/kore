import 'package:flutter/material.dart';

class WildCardPage extends StatefulWidget {
  const WildCardPage({ Key key }) : super(key: key);

  @override
  _WildCardPageState createState() => _WildCardPageState();
}

class _WildCardPageState extends State<WildCardPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text('Página não encontrada :/'),
      ),
    );
  }
}