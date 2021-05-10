import 'package:blog_app_flutter/Helpers/size_config.dart';
import 'package:flutter/material.dart';
import 'Components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text('Home'),
          ),
          body: body()),
    );
  }
}
