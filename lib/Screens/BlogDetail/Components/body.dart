
import 'package:blog_app_flutter/Common/Component/custom_text.dart';
import 'package:blog_app_flutter/Helpers/size_config.dart';
import 'package:blog_app_flutter/Models/Blog.dart';
import 'package:flutter/material.dart';

import 'author_card.dart';
class body extends StatelessWidget {
  const body({
    Key key,
    @required this.blog,
  }) : super(key: key);

  final Blog blog;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(blog.coverPhoto,fit: BoxFit.fitWidth,height: SizeConfig.height*0.30,width: SizeConfig.width,),
          SizedBox(height: 20.0,),
          CustomText(text: blog.title,size: 22.0,),
          CustomText(text: blog.description,size: 17.0,),
          SizedBox(height: 20.0,),
          CustomText(text: 'Author Info: '),
          AuthorCard(image: blog.author.avatar,name: blog.author.name,profession: blog.author.profession,),
          SizedBox(height: 20.0,),
        ],
      ),
    );
  }
}