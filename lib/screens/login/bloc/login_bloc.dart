import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_folder/screens/login/bloc/login_event.dart';
import 'package:new_folder/screens/login/bloc/login_state.dart';
import 'package:new_folder/services/login_repo.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState>{
  LoginBloc(LoginState initialState) : super(initialState){
    on<LoginEvent>((event, emit) async{

      if(event is LoginDataSendingEvent){
        emit(LoginSendingDataState());
        await Future.delayed(const Duration(seconds: 2));
        LoginRepo.authorization(event.email, event.password) ? emit(LoginSuccessfulState()) : emit(LoginErrorState());
      }

    });
  }

}