// FLUTTER
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:kore/app/modules/auth/widgets/login_slide.dart';
import 'package:kore/app/modules/auth/widgets/login_footer.dart';
import 'package:kore/app/modules/auth/widgets/login_slider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final PageController _controller = PageController(
    initialPage: 0,
  );

  Widget _buildFooter() {

    return LoginFooter(
      count: 3,
      controller: _controller,
    );
  }

  Widget _buildSlider() {
    
    return LoginSlider(
      slides: [
        LoginSlide(
          title: 'Excepteur nulla',
          subtitle: 'Culpa nisi adipisicing laborum magna. Non tempor ex ullamco aliquip culpa. Duis fugiat dolore exercitation anim occaecat.',
        ),
        LoginSlide(
          title: 'Excepteur nulla',
          subtitle: 'Culpa nisi adipisicing laborum magna. Non tempor ex ullamco aliquip culpa. Duis fugiat dolore exercitation anim occaecat.',
        ),
        LoginSlide(
          title: 'Excepteur nulla',
          subtitle: 'Culpa nisi adipisicing laborum magna. Non tempor ex ullamco aliquip culpa. Duis fugiat dolore exercitation anim occaecat.',
          hasButton: true,
          buttonLabel: 'Get start now',
          onPressedButton: () => Modular.to.navigate('./sign-in'),
        ),
      ],
      controller: _controller,
    );
  }

  Widget _buildBody() {
    return Container(
      child: Stack(
        children: <Widget>[
          _buildSlider(),
          _buildFooter(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: _buildBody(),
    );
  }
}