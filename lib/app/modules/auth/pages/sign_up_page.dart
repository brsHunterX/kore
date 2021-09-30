// FLUTTER
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({ Key key }) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Widget _buildTitle() {

    return Text(
      'OK, let\'s start',
      textAlign: TextAlign.start,
      style: Theme.of(context).textTheme.headline5,
    );
  }
  
  Widget _buildSubtitle() {

    return Text(
      'Create your new account',
      textAlign: TextAlign.start,
      style: Theme.of(context).textTheme.caption,
    );
  }

  Widget _buildNameInputText() {

    final OutlineInputBorder border = OutlineInputBorder(
      borderSide: BorderSide(
        width: 1.0,
        color: Theme.of(context).primaryColor,
      )
    );

    final InputDecoration decoration = InputDecoration(
      labelText: 'Name',
      hintText: 'Jhon Doe',
      border: border,
    );

    return TextFormField(
      decoration: decoration,
      controller: _nameController,
      keyboardType: TextInputType.text,
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
        child: Text('Create my account'),
        onPressed: () => Modular.to.navigate('/home/'),
      ),
    );
  }
  
  Widget _buildSignUpButton() {
    
    return Container(
      height: 52.0,
      width: MediaQuery.of(context).size.width,
      child: TextButton(
        child: Text('Sign In with my account'),
        onPressed: () => Modular.to.navigate('./sign-in'),
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
          _buildTitle(),
          _buildSubtitle(),
          SizedBox(height: 40.0,),
          _buildNameInputText(),
          SizedBox(height: 10.0,),
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