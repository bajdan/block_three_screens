import 'package:flutter/material.dart';
import 'package:new_folder/screens/splash/bloc/splash_bloc.dart';
import 'package:new_folder/screens/splash/bloc/splash_event.dart';
import 'package:new_folder/screens/splash/bloc/splash_state.dart';
import 'package:new_folder/screens/splash/widgets/splash_screen_logo.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late SplashBloc _bloc;
  
  @override
  void initState() {
    _bloc = SplashBloc(SplashIntialState());
    _bloc.add(SplashOpenLogin());
    _bloc.stream.listen((state) {
      if(state is SplashOpenLoginState){
        Navigator.pushReplacementNamed(context, '/login');
      }
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: const SafeArea(
          child: Center(child: SplashScreenLogo()),
        ),
      ),
    );
  }
}
