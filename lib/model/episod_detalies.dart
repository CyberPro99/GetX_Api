class EpisodeDetails {
  Data ?data;

  EpisodeDetails({this.data});

  EpisodeDetails.fromJson(Map<String, dynamic> json) {
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
  int ?id;
  String ?name;
  String ?audio;
  String ?createdAt;
  String ?programName;
  String ?shareLink;
  String ?info;
  List<Null> ?videos;

  Data(
      {this.id,
        this.name,
        this.audio,
        this.createdAt,
        this.programName,
        this.shareLink,
        this.info,
        this.videos});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    audio = json['audio'];
    createdAt = json['created_at'];
    programName = json['program_name'];
    shareLink = json['share_link'];
    info = json['info'];
    if (json['videos'] != null) {
      videos = <Null>[];
      json['videos'].forEach((v) {
       // videos?.add( Null.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['audio'] = audio;
    data['created_at'] = createdAt;
    data['program_name'] = programName;
    data['share_link'] = shareLink;
    data['info'] = info;
    if (videos != null) {
      // data['videos'] = videos?.map((v) => v.(e) => toJson()).toList();
    }
    return data;
  }
}