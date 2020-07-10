// FLUTTER
import 'package:flutter/material.dart';

class LoginSlide extends StatelessWidget {

  final String title;
  final bool hasButton;
  final String subtitle;
  final String buttonLabel;
  final Function onPressedButton;

  LoginSlide({
    this.onPressedButton,
    this.buttonLabel = '',
    this.hasButton = false,
    @required this.title,
    @required this.subtitle,
  }): assert(title!= null),
      assert(subtitle!= null);
  
  Widget _buildTitle(BuildContext context) {

    return Text(
      title,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.headline4,
    );
  }
  
  Widget _buildSubitle(BuildContext context) {

    return Text(
      subtitle,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.bodyText1,
    );
  }

  Widget _buildButton(BuildContext context) {

    return Container(
      height: 52.0,
      width: MediaQuery.of(context).size.width,
      child: RaisedButton(
        textColor: Colors.white,
        child: Text(buttonLabel),
        onPressed: onPressedButton,
        color: Theme.of(context).primaryColor,
      ),
    );
  }

  Widget _buildBody(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        _buildTitle(context),
        SizedBox(height: 16.0,),
        _buildSubitle(context),
        (hasButton) ? SizedBox(height: 40.0,) : SizedBox(height: 0.0,),
        (hasButton) ? _buildButton(context) : Container(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    
    return Container(
      padding: EdgeInsets.all(32.0),
      child: _buildBody(context),
    );
  }
}