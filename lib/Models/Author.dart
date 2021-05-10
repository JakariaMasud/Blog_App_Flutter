class Author {
  Author({
    this.id,
    this.name,
    this.avatar,
    this.profession,
  });

  int id;
  String name;
  String avatar;
  String profession;

  factory Author.fromJson(Map<String, dynamic> json) => Author(
    id: json["id"],
    name: json["name"],
    avatar: json["avatar"],
    profession: json["profession"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "avatar": avatar,
    "profession": profession,
  };
}
