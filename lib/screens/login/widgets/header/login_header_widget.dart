import 'package:flutter/material.dart';
import 'package:new_folder/services/scalable_size.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: context.getScalableHeight(160.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: context.getScalableHeight(24.5),
          ),
          Container(
            width: context.getScalableWidth(110),
            height: context.getScalableHeight(110),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/logo.png')
                )
            ),
          ),
        ],
      ),
    );
  }
}