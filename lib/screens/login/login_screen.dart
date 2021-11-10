import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_folder/managers/shared_prefs_manager.dart';
import 'package:new_folder/repository/user_repository.dart';
import 'package:new_folder/screens/login/bloc/login_bloc.dart';
import 'package:new_folder/screens/login/bloc/login_state.dart';
import 'package:new_folder/screens/login/widgets/alternative_buttons/login_alternative_buttons.dart';
import 'package:new_folder/screens/login/widgets/header/login_header_widget.dart';
import 'package:new_folder/screens/login/widgets/inherited/login_inherited_widget.dart';
import 'package:new_folder/screens/login/widgets/main_button/login_main_button.dart';
import 'package:new_folder/screens/login/widgets/tabbar/login_tabbar_widget.dart';
import 'package:new_folder/screens/login/widgets/text_fields/login_text_fields.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late LoginBloc bloc;

  @override
  void initState() {
    bloc = LoginBloc(LoginInitialState(), UserRepository(sharedPrefs: SharedPrefsManager()));
    bloc.stream.listen((state) {
      if (state is LoginSuccessfulState) {
        Navigator.pushReplacementNamed(context, '/home');
      }
      if (state is LoginErrorState) {
        Navigator.pushReplacementNamed(context, '/login_error');
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: LoginScreenInheritedWidget(
            bloc: bloc,
            child: BlocBuilder<LoginBloc, LoginState>(
                bloc: bloc,
                builder: (context, snapshot) {
                  if (snapshot is LoginInitialState) {
                    return const LoginScreenData();
                  } else {
                    return SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: const Center(
                        child: CircularProgressIndicator(),
                      ),
                    );
                  }
                }),
          ),
        ),
      ),
    );
  }
}

class LoginScreenData extends StatelessWidget {
  const LoginScreenData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        LoginHeader(),
        LoginTabBar(),
        LoginTextFields(),
        LoginMainButton(),
        LoginAlternativeButtons(),
      ],
    );
  }
}
