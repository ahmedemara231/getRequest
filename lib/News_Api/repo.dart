import 'package:dio/dio.dart';
import 'package:untitled7_alaa/Dio/model.dart';
import 'package:untitled7_alaa/News_Api/dio.dart';
import 'package:untitled7_alaa/News_Api/model.dart';

class Repo2
{
  DioHelper2 dioHelper = DioHelper2();

  Future<Model2> getNewsData()async
  {
    Response response = await dioHelper.getData(
      path:'top-headlines',
      queryParams:
      {
        'apiKey' : '2de62a0b62d746a28ac7b2c6da183104',
        'country' : 'ua',
        'category' : 'health',
      }
    );
    return Model2.fromJson(response.data);
  }


}