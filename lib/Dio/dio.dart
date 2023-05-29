import 'package:dio/dio.dart';

class DioHelper
{
  late Dio dio;
  DioHelper()
  {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://student.valuxapps.com/api/',
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
      )
    );
  }

  Future<Response> getData({
  required String path,
})async
  {
    dio.options.headers =
    {
      'lang' : 'en'
    };
    Response response = await dio.get(path);
    return response;
  }





}