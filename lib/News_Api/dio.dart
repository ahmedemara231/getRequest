import 'package:dio/dio.dart';

class DioHelper2
{
  late Dio dio;
  DioHelper2()
  {
    dio = Dio(
        BaseOptions(
          baseUrl: 'https://newsapi.org/v2/',
          connectTimeout: const Duration(seconds: 10),
          receiveTimeout: const Duration(seconds: 10),
        )
    );
  }

  Future<Response> getData({
    required String path,
    Map<String,dynamic>? queryParams
  })async
  {
    Response response = await dio.get(path,queryParameters: queryParams);
    return response;
  }





}