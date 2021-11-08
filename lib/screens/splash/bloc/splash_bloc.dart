import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_folder/screens/splash/bloc/splash_event.dart';
import 'package:new_folder/screens/splash/bloc/splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState>{
  SplashBloc(initialState) : super(initialState){
    on<SplashEvent>((event, emit) async{
      if(event is SplashOpenLogin){
        await Future<void>.delayed(const Duration(seconds: 3));
        emit(SplashOpenLoginState());
      }
    });
  }
}