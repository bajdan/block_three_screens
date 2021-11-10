import 'package:new_folder/model/api_data.dart';

abstract class HomeState{}

class InitialHomeState extends HomeState{}

class StartLoadingHomeState extends HomeState{}

class LoadedHomeState extends HomeState{
  final ApiDataList dataList;
  LoadedHomeState({required this.dataList});
}

class ErrorHomeState extends HomeState{}