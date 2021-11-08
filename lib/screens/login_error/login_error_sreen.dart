import 'package:flutter/material.dart';

class LoginErrorScreen extends StatelessWidget {
  const LoginErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(child: Text('ERROR', style: TextStyle(color: Colors.red, fontSize: 35),),),
      ),
    );
  }
}
