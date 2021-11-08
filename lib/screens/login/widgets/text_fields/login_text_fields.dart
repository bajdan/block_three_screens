import 'package:flutter/material.dart';
import 'package:new_folder/screens/login/widgets/text_fields/login_email_textfield.dart';
import 'package:new_folder/screens/login/widgets/text_fields/login_password_textfield.dart';
import 'package:new_folder/services/scalable_size.dart';

class LoginTextFields extends StatelessWidget {
  const LoginTextFields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          SizedBox(
            height: context.getScalableHeight(14.0),
          ),
          SizedBox(
            width: context.getScalableWidth(293.0),
            height: context.getScalableHeight(24.0),
            child: const Text('Email', style: TextStyle(color: Color(0xFF71883A)),),
          ),
          SizedBox(
            height: context.getScalableHeight(5.0),
          ),
          const LoginEmailTextField(),
          SizedBox(
            height: context.getScalableHeight(15.0),
          ),
          SizedBox(
            width: context.getScalableWidth(293.0),
            height: context.getScalableHeight(24.0),
            child: const Text('Password', style: TextStyle(color: Color(0xFF71883A)),),
          ),
          SizedBox(height: context.getScalableHeight(5.0),),
          const LoginPasswordTextField(),
          SizedBox(height: context.getScalableHeight(5.0),),
          SizedBox(
            width: context.getScalableWidth(323.0),
            child: const Text('Remind my password', style: TextStyle(
                color: Color(0xFF71883A),
                decoration: TextDecoration.underline
            ),
              textAlign: TextAlign.end,
            ),
          )
        ],
      ),
    );
  }
}