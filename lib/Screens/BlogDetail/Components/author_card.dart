
import 'package:blog_app_flutter/Common/Component/custom_text.dart';
import 'package:blog_app_flutter/Helpers/size_config.dart';
import 'package:flutter/material.dart';

class AuthorCard extends StatelessWidget {
  String name, image, profession;

  AuthorCard({this.name, this.image, this.profession});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.0,
      margin: EdgeInsets.all(10.0),
      child: Row(
        children: [
          Image.network(
            image,
            fit: BoxFit.cover,
            height: SizeConfig.height * 0.1,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: name,
                size: 15.0,
              ),
              CustomText(
                text: profession,
                size: 15.0,
              )
            ],
          )
        ],
      ),
    );
  }
}
