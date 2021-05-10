import 'Author.dart';
class Blog {
  Blog({
    this.id,
    this.title,
    this.description,
    this.coverPhoto,
    this.categories,
    this.author,
  });

  int id;
  String title;
  String description;
  String coverPhoto;
  List<String> categories;
  Author author;

  factory Blog.fromJson(Map<String, dynamic> json) => Blog(
    id: json["id"],
    title: json["title"],
    description: json["description"],
    coverPhoto: json["cover_photo"],
    categories: List<String>.from(json["categories"].map((x) => x)),
    author: Author.fromJson(json["author"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "description": description,
    "cover_photo": coverPhoto,
    "categories": List<dynamic>.from(categories.map((x) => x)),
    "author": author.toJson(),
  };
}