import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import '../constants/api_routes.dart';
import '../models/blog_model.dart';

part 'data_source.g.dart';

@RestApi(baseUrl: ApiRoutes.basedUrl)
abstract class DataSource
{
  factory DataSource(Dio dio, {String? baseUrl}) = _DataSource;

  @GET(ApiRoutes.blog)
  Future<List<BlogModel>> getBlog();
}