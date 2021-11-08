import 'package:flutter/material.dart';
import 'package:new_folder/screens/login/bloc/login_event.dart';
import 'package:new_folder/screens/login/widgets/inherited/login_inherited_widget.dart';
import 'package:new_folder/services/scalable_size.dart';

class LoginMainButton extends StatefulWidget {
  const LoginMainButton({Key? key}) : super(key: key);

  @override
  State<LoginMainButton> createState() => _LoginMainButtonState();
}

class _LoginMainButtonState extends State<LoginMainButton> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: context.getScalableHeight(30.0),
        ),
        GestureDetector(
          child: Container(
            width: context.getScalableWidth(323.0),
            height: context.getScalableHeight(53.0),
            decoration: BoxDecoration(
                color: const Color(0xFF71883A),
                borderRadius: BorderRadius.circular(50)
            ),
            child: const Center(
              child: Text('Log in', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),),
            ),
          ),
          onTap: (){
            String email = context.dependOnInheritedWidgetOfExactType<LoginScreenInheritedWidget>()!.emailController.text;
            String password = context.dependOnInheritedWidgetOfExactType<LoginScreenInheritedWidget>()!.passwordController.text;
            context.dependOnInheritedWidgetOfExactType<LoginScreenInheritedWidget>()!.bloc.add(LoginDataSendingEvent(email: email, password: password));
          },
        )
      ],
    );
  }
}