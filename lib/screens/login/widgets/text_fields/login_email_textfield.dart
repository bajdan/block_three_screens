import 'package:flutter/material.dart';
import 'package:new_folder/screens/login/widgets/inherited/login_inherited_widget.dart';
import 'package:new_folder/services/scalable_size.dart';

class LoginEmailTextField extends StatelessWidget {
  const LoginEmailTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.getScalableWidth(323.0),
      height: context.getScalableHeight(51.0),
      child: TextField(
        controller: context
            .dependOnInheritedWidgetOfExactType<LoginScreenInheritedWidget>()!
            .emailController,
        decoration: const InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: "Enter your Email",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.zero),
            )
        ),
      ),
    );
  }
}