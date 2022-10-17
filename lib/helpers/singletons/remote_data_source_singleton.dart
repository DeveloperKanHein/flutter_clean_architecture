import 'package:clean_app/helpers/singletons/data_source_singleton.dart';

import '../../data/data_sources/remote_data_source.dart';
import '../../data/data_sources/remote_data_source_impl.dart';


class RemoteDataSourceSingleton
{
  static RemoteDataSource? remoteDataSource;
  static RemoteDataSource instance(){
    remoteDataSource ??= RemoteDataSourceImpl(dataSource: DataSourceSingleton.instance());
    return remoteDataSource!;
  }
}