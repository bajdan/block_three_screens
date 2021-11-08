import 'package:flutter/material.dart';
import 'package:new_folder/screens/login/bloc/login_bloc.dart';

class LoginScreenInheritedWidget extends InheritedWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final LoginBloc bloc;

  LoginScreenInheritedWidget({
    required this.bloc,
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  static LoginScreenInheritedWidget of(BuildContext context) {
    final LoginScreenInheritedWidget? result = context
        .dependOnInheritedWidgetOfExactType<LoginScreenInheritedWidget>();
    assert(result != null, 'No LoginScreenInheritedWidget found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(LoginScreenInheritedWidget old) {
    return true;
  }
}