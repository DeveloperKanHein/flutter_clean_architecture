import 'package:clean_app/helpers/singletons/data_source_singleton.dart';

import '../../data/data_sources/remote_data_source.dart';
import '../../data/data_sources/remote_data_source_impl.dart';


class RemoteDataSourceSingleton
{
  static RemoteDataSource? _remoteDataSource;
  static RemoteDataSource get instance => _remoteDataSource ??= RemoteDataSourceImpl(dataSource: DataSourceSingleton.instance);
}