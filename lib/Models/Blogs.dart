import 'Blog.dart';

class Blogs {
  Blogs({
    this.blogs,
  });

  List<Blog> blogs;

  factory Blogs.fromJson(Map<String, dynamic> json) => Blogs(
    blogs: List<Blog>.from(json["blogs"].map((x) => Blog.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "blogs": List<dynamic>.from(blogs.map((x) => x.toJson())),
  };
}