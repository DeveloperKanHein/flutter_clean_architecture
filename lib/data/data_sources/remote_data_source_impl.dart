import 'package:clean_app/data/data_sources/data_source.dart';
import 'package:clean_app/data/data_sources/remote_data_source.dart';
import '../models/blog_model.dart';

class RemoteDataSourceImpl extends RemoteDataSource
{
  final DataSource dataSource;
  RemoteDataSourceImpl({ required this.dataSource });
  @override
  Future<List<BlogModel>> getBlog() async
  {
    List<BlogModel> blogModel = await dataSource.getBlog();
    return blogModel;
  }
}