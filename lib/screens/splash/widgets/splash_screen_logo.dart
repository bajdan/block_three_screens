import 'package:flutter/material.dart';
import 'package:new_folder/services/scalable_size.dart';

class SplashScreenLogo extends StatefulWidget {
  const SplashScreenLogo({Key? key}) : super(key: key);

  @override
  _SplashScreenLogoState createState() => _SplashScreenLogoState();
}

class _SplashScreenLogoState extends State<SplashScreenLogo>
    with SingleTickerProviderStateMixin {
  late AnimationController _logoOpacityController;
  late Animation<double> _logoOpacityAnimation;

  @override
  void initState() {
    _logoOpacityController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1500));
    _logoOpacityAnimation = Tween(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: _logoOpacityController, curve: Curves.easeIn));

    _logoOpacityController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _logoOpacityController.forward();
    return Opacity(
      opacity: _logoOpacityAnimation.value,
      child: Container(
        width: context.getScalableWidth(250.0),
        height: context.getScalableHeight(250.0),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/logo.png'),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
