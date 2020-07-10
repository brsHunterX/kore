// FLUTTER
import 'package:flutter/material.dart';
import 'package:kore/app/modules/login/widgets/login_slide.dart';

class LoginSlider extends StatelessWidget {

  final List<LoginSlide> slides;
  final PageController controller;

  LoginSlider({
    @required this.slides,
    @required this.controller,
  }): assert(slides != null),
      assert(controller != null);
  
  @override
  Widget build(BuildContext context) {

    // <Widget>[
    //     Container(
    //       color: Colors.blue,
    //       width: MediaQuery.of(context).size.width,
    //       height: MediaQuery.of(context).size.height,
    //     ),
    //     Container(
    //       color: Colors.green,
    //       width: MediaQuery.of(context).size.width,
    //       height: MediaQuery.of(context).size.height,
    //     ),
    //     Container(
    //       color: Colors.orange,
    //       width: MediaQuery.of(context).size.width,
    //       height: MediaQuery.of(context).size.height,
    //     ),
    //   ],
    
    return PageView(
      children: slides,
      controller: controller,
    );
  }
}