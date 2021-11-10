import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_folder/repository/user_repository.dart';
import 'package:new_folder/screens/login/bloc/login_event.dart';
import 'package:new_folder/screens/login/bloc/login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState>{
  final IUserRepository repository;
  LoginBloc(LoginState initialState, this.repository) : super(initialState){
    on<LoginEvent>((event, emit) async{

      if(event is LoginDataSendingEvent){
        emit(LoginSendingDataState());
        await Future.delayed(const Duration(seconds: 2));
        repository.loginUser(event.email, event.password) ? emit(LoginSuccessfulState()) : emit(LoginErrorState());
      }

    });
  }

}