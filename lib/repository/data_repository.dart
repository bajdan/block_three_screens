import 'package:new_folder/managers/api_manager.dart';
import 'package:new_folder/model/api_data.dart';

abstract class IDataRepo{
  Future<ApiDataList> getData();
}

class DataRepository extends IDataRepo{
  final IApiManager apiManager;

  DataRepository({required this.apiManager});

  @override
  Future<ApiDataList> getData() {
    return apiManager.callApiRequest();
  }

}