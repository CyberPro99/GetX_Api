class New {
  Data? data;

  New({this.data});

  New.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data?.toJson();
    }
    return data;
  }
}

class Data {
  int? id;
  String? title;
  String? caption;
  String? postBrief;
  String? postText;
  String? sound;
  Null? authorId;
  String? img;
  String? createdAt;

  Data(
      {this.id,
      this.title,
      this.caption,
      this.postBrief,
      this.postText,
      this.sound,
      this.authorId,
      this.img,
      this.createdAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    caption = json['caption'];
    postBrief = json['post_brief'];
    postText = json['post_text'];
    sound = json['sound'];
    authorId = json['author_id'];
    img = json['img'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['caption'] = caption;
    data['post_brief'] = postBrief;
    data['post_text'] = postText;
    data['sound'] = sound;
    data['author_id'] = authorId;
    data['img'] = img;
    data['created_at'] = createdAt;
    return data;
  }
}
