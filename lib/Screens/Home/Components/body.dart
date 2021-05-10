import 'package:blog_app_flutter/Cubit/blog_cubit.dart';
import 'package:blog_app_flutter/Cubit/blog_state.dart';
import 'package:blog_app_flutter/Screens/BlogDetail/blog_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'blog_card.dart';

class body extends StatelessWidget {
  const body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all((8.0)),
      child: BlocBuilder<BlogCubit, BlogState>(
        builder: (context, state) {
          if (state is BlogLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is BlogLoaded) {
            final blogList = state.blogsObj.blogs;
            return ListView.builder(
                itemCount: blogList.length,
                itemBuilder: (context, index) {
                  final singleBlog = blogList[index];
                  return BlogCard(
                    image: singleBlog.coverPhoto,
                    title: singleBlog.title,
                    onCoverPress: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BlogDetailScreen(blog: singleBlog)));
                    },
                  );
                });
          } else {
            return Center(
              child: Text('Error in Getting Data'),
            );
          }
        },
      ),
    );
  }
}
