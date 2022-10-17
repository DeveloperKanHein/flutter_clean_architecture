import 'package:clean_app/presentation/bloc/blog_bloc/blog_bloc.dart';
import 'package:clean_app/presentation/screens/blog_screens/blog_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlogListScreen extends StatefulWidget {
  const BlogListScreen({Key? key}) : super(key: key);

  @override
  State<BlogListScreen> createState() => _BlogListScreenState();
}

class _BlogListScreenState extends State<BlogListScreen> {
  final BlogBloc _blogBloc = BlogBloc();

  @override
  void initState() {
    super.initState();
    _blogBloc.add(GetBlogList());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CLEAN Architecture"),
      ),
      body: SafeArea(
        child: BlocProvider(
            create: (_) => _blogBloc,
            child: BlocListener<BlogBloc, BlogState>(
              listener: (context, state) {
                //
              },
              child: BlocBuilder<BlogBloc, BlogState>(
                builder: (context, state) {
                  if (state is BlogLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (state is BlogSuccess) {
                    return ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        itemCount: state.blogList.length,
                        itemBuilder: (context, index) {
                          return Card(
                            child: ListTile(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              BlogDetailScreen(
                                                  blog:
                                                      state.blogList[index])));
                                },
                                title: Text(state.blogList[index].title),
                                subtitle: Padding(
                                  padding: const EdgeInsets.only(top: 15.0),
                                  child: Text(
                                    state.blogList[index].by(),
                                    style: const TextStyle(
                                        fontStyle: FontStyle.italic),
                                  ),
                                )),
                          );
                        });
                  } else if (state is BlogEmpty) {
                    return const Center(
                      child: Text("Data Empty"),
                    );
                  } else if (state is BlogError) {
                    return const Center(
                      child: Text("Loading Error"),
                    );
                  }
                  return Container();
                },
              ),
            )),
      ),
    );
  }
}
/*

 */
