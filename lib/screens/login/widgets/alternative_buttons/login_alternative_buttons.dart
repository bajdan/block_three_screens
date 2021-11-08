import 'package:flutter/material.dart';
import 'package:new_folder/services/scalable_size.dart';

class LoginAlternativeButtons extends StatelessWidget {
  const LoginAlternativeButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: context.getScalableHeight(30.0),),
        SizedBox(
          width: context.getScalableWidth(343.0),
          child: const Text('Log in with social networks', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400), textAlign: TextAlign.center,),
        ),
        SizedBox(height: context.getScalableHeight(24.0),),
        const FacebookButton(),
        SizedBox(height: context.getScalableHeight(18.0),),
        const GoogleButton(),
        SizedBox(height: context.getScalableHeight(18.0),),
        const AppleButton(),
      ],
    );
  }
}

class FacebookButton extends StatelessWidget {
  const FacebookButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.getScalableHeight(40.0),
      width: context.getScalableWidth(200.0),
      decoration: const BoxDecoration(
          color: Color(0xFF3B5998)
      ),
      child: Row(
        children: [
          SizedBox(width: context.getScalableWidth(14.0),),
          Container(
            width: context.getScalableWidth(18.0),
            height: context.getScalableHeight(18.0),
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/facebook_logo.png'),
                  fit: BoxFit.contain,
                )
            ),
          ),
          SizedBox(width: context.getScalableWidth(10.0),),
          const Text('Sign in with Facebook',style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),),
        ],
      ),
    );
  }
}

class GoogleButton extends StatelessWidget {
  const GoogleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.getScalableHeight(40.0),
      width: context.getScalableWidth(200.0),
      decoration: const BoxDecoration(
          color: Color(0xFF4285F4)
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left:context.getScalableWidth(1.0), ),
            width:  context.getScalableWidth(38.0),
            height: context.getScalableHeight(38.0),
            color: Colors.white,
            child: Center(
              child: Container(
                width: context.getScalableWidth(18.0),
                height: context.getScalableHeight(18.0),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/google_logo.png'),
                      fit: BoxFit.contain,
                    )
                ),
              ),
            ),
          ),
          SizedBox(width: context.getScalableWidth(18.0),),
          const Text('Sign in with Google',style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),),
        ],
      ),
    );
  }
}

class AppleButton extends StatelessWidget {
  const AppleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.getScalableHeight(40.0),
      width: context.getScalableWidth(200.0),
      decoration: const BoxDecoration(
          color: Color(0xFF000000)
      ),
      child: Row(
        children: [
          SizedBox(width: context.getScalableWidth(14.0),),
          Container(
            width: context.getScalableWidth(11.0),
            height: context.getScalableHeight(13.0),
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/apple_logo.png'),
                  fit: BoxFit.contain,
                )
            ),
          ),
          SizedBox(width: context.getScalableWidth(12.0),),
          const Text('Sign in with Apple',style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),),
        ],
      ),
    );
  }
}

