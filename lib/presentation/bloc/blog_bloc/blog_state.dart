part of 'blog_bloc.dart';

abstract class BlogState extends Equatable
{
  @override
  List<Object> get props => [];
}

class BlogLoading extends BlogState
{
  //
}

class BlogSuccess extends BlogState
{
  final List<Blog> blogList;
  BlogSuccess({required this.blogList});
}

class BlogEmpty extends BlogState
{
  //
}

class BlogError extends BlogState
{
  //
}