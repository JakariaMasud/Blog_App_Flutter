import 'package:blog_app_flutter/Models/Blog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Components/body.dart';

class BlogDetailScreen extends StatelessWidget {
  Blog blog;

  BlogDetailScreen({@required this.blog});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Blog Detail'),
        ),
        body: body(blog: blog),
      ),
    );
  }
}
