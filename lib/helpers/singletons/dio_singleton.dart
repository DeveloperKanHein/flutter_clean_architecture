import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioSingleton
{
  static Dio? dio;
  static Dio instance(){
    if(dio == null){
      dio = Dio(BaseOptions(contentType: "application/json"));
      dio?.interceptors.add(PrettyDioLogger());
      dio?.interceptors.add(PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          error: true,
          compact: true,
          maxWidth: 90));
    }
    return dio!;
  }
}