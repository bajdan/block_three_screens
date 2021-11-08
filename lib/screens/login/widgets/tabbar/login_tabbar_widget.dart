import 'package:flutter/material.dart';
import 'package:new_folder/services/scalable_size.dart';

class LoginTabBar extends StatelessWidget {
  const LoginTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: context.getScalableHeight(50.0),
      color: const Color(0xFF2B2B2B),
      child: Row(
        children: const [
          ActiveButton(text: 'Existing user'),
          InactiveButton(text: 'New user')
        ],
      ),
    );
  }
}

class ActiveButton extends StatelessWidget {
  final String text;
  const ActiveButton({required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2,
      height: context.getScalableHeight(50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(text, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
          SizedBox(height: context.getScalableHeight(12.0),),
          Container(
            width: context.getScalableWidth(177.0),
            height: context.getScalableHeight(3.0),
            color: const Color(0xFF71883A),
          )
        ],
      ),
    );
  }
}

class InactiveButton extends StatelessWidget {
  final String text;
  const InactiveButton({required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2,
      height: context.getScalableHeight(50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(text, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
          SizedBox(height: context.getScalableHeight(15.0),),
        ],
      ),
    );
  }
}

