import 'package:clean_app/data/data_sources/remote_data_source.dart';
import 'package:clean_app/domain/entities/blog.dart';
import 'package:clean_app/domain/repositories/blog_repository.dart';

class BlogRepositoryImpl extends BlogRepository
{
  final RemoteDataSource remoteDataSource;
  BlogRepositoryImpl({ required this.remoteDataSource });
  @override
  Future<List<Blog>> getBlog() async {
    final blog = await remoteDataSource.getBlog();
    List<Blog> blogEntities = blog.map((e) => e.toEntity()).toList();
    return blogEntities;
  }
}