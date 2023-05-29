import 'package:dio/dio.dart';
import 'package:untitled7_alaa/Dio/dio.dart';
import 'package:untitled7_alaa/Dio/model.dart';

class Repo
{
  DioHelper dioHelper = DioHelper();

  Future<Model> getCategoriesData()async
  {
    Response response = await dioHelper.getData(path: 'home');
    return Model.fromJson(response.data);
  }


}