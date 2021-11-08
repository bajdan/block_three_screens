import 'package:flutter/material.dart';
import 'package:new_folder/screens/login/widgets/inherited/login_inherited_widget.dart';
import 'package:new_folder/services/scalable_size.dart';

class LoginPasswordTextField extends StatefulWidget {
  const LoginPasswordTextField({Key? key}) : super(key: key);

  @override
  State<LoginPasswordTextField> createState() => _LoginPasswordTextFieldState();
}

class _LoginPasswordTextFieldState extends State<LoginPasswordTextField> {
  late bool _obscureText;
  @override
  void initState() {
    _obscureText = true;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.getScalableWidth(323.0),
      height: context.getScalableHeight(51.0),
      child: TextField(
        controller: context
            .dependOnInheritedWidgetOfExactType<LoginScreenInheritedWidget>()!
            .passwordController,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: "Enter current Password",
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.zero),
            ),
            suffixIcon: IconButton(icon: const Icon(Icons.visibility), onPressed: (){
              setState(() {
                _obscureText = !_obscureText;
              });
            },)
        ),
        obscureText: _obscureText,
      ),
    );
  }
}