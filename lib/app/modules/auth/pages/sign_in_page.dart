// FLUTTER
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({ Key key }) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Widget _buildAvatar() {

    return CircleAvatar(
      radius: 40.0,
      foregroundColor: Colors.grey[600],
      backgroundColor: Colors.grey[300],
      child: Text('BS', style: TextStyle(fontSize: 28.0),),
    );
  }

  Widget _buildTitle() {

    return Text(
      'Welcome',
      textAlign: TextAlign.start,
      style: Theme.of(context).textTheme.headline5,
    );
  }
  
  Widget _buildSubtitle() {

    return Text(
      'Sign in with your account',
      textAlign: TextAlign.start,
      style: Theme.of(context).textTheme.caption,
    );
  }

  Widget _buildEmailInputText() {

    final OutlineInputBorder border = OutlineInputBorder(
      borderSide: BorderSide(
        width: 1.0,
        color: Theme.of(context).primaryColor,
      )
    );

    final InputDecoration decoration = InputDecoration(
      labelText: 'Email',
      hintText: 'example@example.com',
      border: border,
    );

    return TextFormField(
      decoration: decoration,
      controller: _emailController,
      keyboardType: TextInputType.emailAddress,
    );
  }

  Widget _buildPassworInputText() {

    final OutlineInputBorder border = OutlineInputBorder(
      borderSide: BorderSide(
        width: 1.0,
        color: Theme.of(context).primaryColor,
      )
    );

    final InputDecoration decoration = InputDecoration(
      labelText: 'Password',
      // hintText: 'example@example.com',
      border: border,
    );

    return TextFormField(
      obscureText: true,
      decoration: decoration,
      controller: _passwordController,
      keyboardType: TextInputType.visiblePassword,
    );
  }

  Widget _buildSignInButton() {
    
    return Container(
      height: 52.0,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        child: Text('Sign In'),
        onPressed: () => Modular.to.navigate('/home/'),
      ),
    );
  }
  
  Widget _buildSignUpButton() {
    
    return Container(
      height: 52.0,
      width: MediaQuery.of(context).size.width,
      child: TextButton(
        child: Text('Create account'),
        onPressed: () => Modular.to.navigate('./sign-up'),
      ),
    );
  }
  
  Widget _buildForm() {

    return Form(
      child: ListView(
        padding: EdgeInsets.symmetric(
          vertical: 40.0,
          horizontal: 32.0,
        ),
        children: <Widget>[
          // _buildAvatar(),
          SizedBox(height: 40.0,),
          _buildTitle(),
          _buildSubtitle(),
          SizedBox(height: 40.0,),
          _buildEmailInputText(),
          SizedBox(height: 10.0,),
          _buildPassworInputText(),
          SizedBox(height: 40.0,),
          _buildSignInButton(),
          SizedBox(height: 16.0,),
          _buildSignUpButton(),
        ],
      ),
    );
  }

  Widget _buildBody() {

    return Container(
      child: _buildForm(),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
    );
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: _buildBody(),
    );
  }
}