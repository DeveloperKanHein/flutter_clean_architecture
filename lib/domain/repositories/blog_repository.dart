import '../entities/blog.dart';

abstract class BlogRepository
{
  Future<List<Blog>> getBlog();
}