import 'package:clean_app/data/data_sources/data_source.dart';
import 'dio_singleton.dart';

class DataSourceSingleton
{
  static DataSource? _dataSource;
  static DataSource get instance => _dataSource ??= DataSource(DioSingleton.instance());
}