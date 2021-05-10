
import 'package:blog_app_flutter/Common/Component/custom_text.dart';
import 'package:blog_app_flutter/Helpers/size_config.dart';
import 'package:flutter/material.dart';

class BlogCard extends StatelessWidget {
  String image, title;
  Function onCoverPress;

  BlogCard(
      {@required this.image,
      @required this.title,
      @required this.onCoverPress});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      margin: EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: onCoverPress,
              child: Image.network(
                image,
                fit: BoxFit.cover,
                width: SizeConfig.width,
                height: SizeConfig.height * 0.25,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text: title,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
