class ApiDataList{
  late List<ApiData> data;
  ApiDataList({required this.data});

  factory ApiDataList.fromJson(List<dynamic> json){
    List<ApiData> data = json.map((e) => ApiData.fromJson(e)).toList();
    return ApiDataList(data: data);
  }
}

class ApiData {
  late int userId;
  late int id;
  late String title;
  late String body;

  ApiData(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body});

  factory ApiData.fromJson(Map<String, dynamic> json) {
    return ApiData(
        userId: json['userId'],
        id: json['id'],
        title: json['title'],
        body: json['body']);
  }
}
