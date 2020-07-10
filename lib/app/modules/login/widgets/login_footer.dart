// FLUTTER
import 'package:flutter/material.dart';

// WIDGETS
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class LoginFooter extends StatelessWidget {

  final int count;
  final PageController controller;

  LoginFooter({
    @required this.count,
    @required this.controller,
  }): assert(count != null),
      assert(count != null);

  Widget _buildIndicator(BuildContext context) {

    final ExpandingDotsEffect effect = ExpandingDotsEffect(
      dotWidth: 10.0,
      dotHeight: 10.0,
      activeDotColor: Theme.of(context).primaryColor,
    );

    return SmoothPageIndicator(
      count: count,
      effect: effect,
      controller: controller,
    );
  }

  Widget _buildBody(BuildContext context) {

    return Container(
      height: 100.0,
      alignment: Alignment.center,
      child: _buildIndicator(context),
      width: MediaQuery.of(context).size.width,
    );
  }
  
  @override
  Widget build(BuildContext context) {

    return Align(
      child: _buildBody(context),
      alignment: Alignment.bottomCenter,
    );
  }
}