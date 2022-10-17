import 'package:clean_app/data/data_sources/data_source.dart';
import 'dio_singleton.dart';

class DataSourceSingleton
{
  static DataSource? dataSource;
  static DataSource instance()
  {
    dataSource ??= DataSource(DioSingleton.instance());
    return dataSource!;
  }
}