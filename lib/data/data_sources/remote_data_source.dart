import '../models/blog_model.dart';

abstract class RemoteDataSource
{
  Future<List<BlogModel>> getBlog();
}