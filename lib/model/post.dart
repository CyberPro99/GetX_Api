// class Post {
//   int? userId;
//   int? id;
//   String? title;
//   String? body;
//
//   Post({this.userId, this.id, this.title, this.body});
//
//   Post.fromJson(Map<String, dynamic> json) {
//     userId = json['userId'];
//     id = json['id'];
//     title = json['title'];
//     body = json['body'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['userId'] = this.userId;
//     data['id'] = this.id;
//     data['title'] = this.title;
//     data['body'] = this.body;
//     return data;
//   }
// }

// To parse this JSON data, do
//
//     final getDataModel = getDataModelFromJson(jsonString);

import 'dart:convert';

GetDataModel getDataModelFromJson(String str) =>
    GetDataModel.fromJson(json.decode(str));

String getDataModelToJson(GetDataModel data) => json.encode(data.toJson());

class GetDataModel {
  int? number;
  String? message;
  List<People>? people;

  GetDataModel({this.number, this.message, this.people});

  GetDataModel.fromJson(Map<String, dynamic> json) {
    number = json['error_code'];
    message = json['timestamp'];
    if (json['data'] != null) {
      people = <People>[];
      json['data'].forEach((v) {
        people!.add(new People.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['error_code'] = this.number;
    data['timestamp'] = this.message;
    if (this.people != null) {
      data['data'] = this.people!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class People {
  String? craft;
  String? name;

  People({this.craft, this.name});

  People.fromJson(Map<String, dynamic> json) {
    craft = json['BTC'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['BTC'] = this.craft;
    data['name'] = this.name;
    return data;
  }
}
