class Category {
  List<Data>? data;

  Category({this.data});

  Category.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? catName;
  String? color;

  Data({this.catName, this.color});

  Data.fromJson(Map<String, dynamic> json) {
    catName = json['cat_name'];
    color = json['color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['cat_name'] = catName;
    data['color'] = color;
    return data;
  }
}
