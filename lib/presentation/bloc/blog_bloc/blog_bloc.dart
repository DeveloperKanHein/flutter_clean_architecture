import 'package:clean_app/helpers/singletons/remote_data_source_singleton.dart';
import 'package:clean_app/data/repositories/blog_repository_impl.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/entities/blog.dart';
import '../../../domain/usecases/get_blog.dart';

part 'blog_event.dart';
part 'blog_state.dart';

class BlogBloc extends Bloc<BlogEvent, BlogState>
{
  BlogBloc() : super(BlogLoading())
  {
    final GetBlog getBlog = GetBlog(blogRepository: BlogRepositoryImpl(remoteDataSource: RemoteDataSourceSingleton.instance()));
    on<GetBlogList>((event, emit) async {
      try{
        emit(BlogLoading());
        final blog = await getBlog.execute();
        emit(BlogSuccess(blogList: blog));
        if(blog.isEmpty){
          emit(BlogEmpty());
        }
      }catch(e){
        emit(BlogError());
      }
    });
  }
}