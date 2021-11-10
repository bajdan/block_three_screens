import 'package:flutter/material.dart';
import 'package:new_folder/screens/home/bloc/home_bloc.dart';

class HomeInheritedWidget extends InheritedWidget {
  final HomeBloc block;
  const HomeInheritedWidget({
    Key? key,
    required Widget child,
    required this.block,
  }) : super(key: key, child: child);

  static HomeInheritedWidget of(BuildContext context) {
    final HomeInheritedWidget? result =
        context.dependOnInheritedWidgetOfExactType<HomeInheritedWidget>();
    assert(result != null, 'No HomeInheritedWidget found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(HomeInheritedWidget old) {
    return true;
  }
}
