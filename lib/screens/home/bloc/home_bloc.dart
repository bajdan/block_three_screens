import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_folder/model/api_data.dart';
import 'package:new_folder/repository/data_repository.dart';
import 'package:new_folder/screens/home/bloc/home_event.dart';
import 'package:new_folder/screens/home/bloc/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState>{
  IDataRepo dataRepository;
  HomeBloc(HomeState initialState, this.dataRepository) : super(initialState){
    on<HomeEvent>((event, emit) async {
      if(event is LoadHomeEvent){
          try{
            ApiDataList data = await dataRepository.getData();
            emit(LoadedHomeState(dataList: data));
          }catch(ex){
            print(ex);
            emit(ErrorHomeState());
          }
      }
    });
  }
}