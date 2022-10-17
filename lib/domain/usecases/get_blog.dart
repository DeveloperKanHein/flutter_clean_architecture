import 'package:clean_app/domain/repositories/blog_repository.dart';

import '../entities/blog.dart';

class GetBlog
{
  final BlogRepository blogRepository;
  GetBlog({ required this.blogRepository});

  Future<List<Blog>> execute()
  {
    return blogRepository.getBlog();
  }
}