class Model
{
  bool status;
  String? message;
  Map<String, dynamic> data;

  Model({
    required this.message,
    required this.data,
    required this.status,
});
  factory Model.fromJson(Map<String,dynamic> jsonData)
  {
    return Model(
        message: jsonData['message'],
        data: jsonData['data'],
        status: jsonData['status']
    );
  }
}