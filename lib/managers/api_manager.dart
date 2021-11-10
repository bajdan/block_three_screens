import 'dart:convert';

import 'package:new_folder/model/api_data.dart';
import 'package:http/http.dart' as http;

abstract class IApiManager {
  Future<ApiDataList> callApiRequest();
}

class ApiManager extends IApiManager{

  @override
  Future<ApiDataList> callApiRequest() async{
    final http.Response response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    if(response.statusCode==200){
     return ApiDataList.fromJson(json.decode(response.body));
    }else{
      throw Exception('Error: ${response.reasonPhrase}');
    }
  }

}