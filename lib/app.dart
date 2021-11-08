import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_folder/screens/home/home_screen.dart';
import 'package:new_folder/screens/login/login_screen.dart';
import 'package:new_folder/screens/login_error/login_error_sreen.dart';
import 'package:new_folder/screens/splash/splah_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Sarabun',
        scaffoldBackgroundColor: const Color.fromRGBO(37, 37, 37, 1.0),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {
        '/splash' : (context) => const SplashScreen(),
        '/login' : (context) => const LoginScreen(),
        '/home' : (context) => const HomeScreen(),
        '/login_error' : (context) => const LoginErrorScreen(),
      },
    );
  }
}
