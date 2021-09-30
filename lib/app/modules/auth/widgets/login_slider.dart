// FLUTTER
import 'package:flutter/material.dart';
import 'package:kore/app/modules/auth/widgets/login_slide.dart';

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
    
    return PageView(
      children: slides,
      controller: controller,
    );
  }
}