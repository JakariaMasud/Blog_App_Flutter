import 'dart:convert';
import 'package:blog_app_flutter/Models/Blogs.dart';
import 'package:http/http.dart' as http;

class BlogRepository {

  Future<Blogs>fetchBlog()async{
    final response = await http.get(Uri.https('raw.githubusercontent.com', 'Muhaiminur/muhaiminur.github.io/master/misfitflutter.tech'));
    if(response.statusCode==200){
      final decodedJson=jsonDecode(response.body);
      Blogs blogs=Blogs.fromJson(decodedJson);
      return blogs;
    }
  }
}