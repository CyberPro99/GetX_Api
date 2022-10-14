class Program {
  Data? data;

  Program({this.data});

  Program.fromJson(Map<String, dynamic> json) {
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
  String? name;
  String? img;
  String? presenterProgram;
  String? presenterImg;
  List<Live>? live;
  Episode? episode;

  Data(
      {this.id,
      this.name,
      this.img,
      this.presenterProgram,
      this.presenterImg,
      this.live,
      this.episode});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    img = json['img'];
    presenterProgram = json['presenter_program'];
    presenterImg = json['presenter_img'];
    if (json['live'] != null) {
      live = <Live>[];
      json['live'].forEach((v) {
        live?.add(Live.fromJson(v));
      });
    }
    episode =
        json['episode'] != null ? Episode.fromJson(json['episode']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['img'] = img;
    data['presenter_program'] = presenterProgram;
    data['presenter_img'] = presenterImg;
    if (live != null) {
      data['live'] = live?.map((v) => v.toJson()).toList();
    }
    if (episode != null) {
      data['episode'] = episode?.toJson();
    }
    return data;
  }
}

class Live {
  int? id;
  String? time;
  String? dayId;
  int? type;

  Live({this.id, this.time, this.dayId, this.type});

  Live.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    time = json['time'];
    dayId = json['day_id'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['time'] = time;
    data['day_id'] = dayId;
    data['type'] = type;
    return data;
  }
}

class Episode {
  int? currentPage;
  List<Data>? data;
  String? firstPageUrl;
  int? from;
  int? lastPage;
  String? lastPageUrl;
  List<Links>? links;
  String? nextPageUrl;
  String? path;
  int? perPage;
  Null prevPageUrl;
  int? to;
  int? total;

  Episode(
      {this.currentPage,
      this.data,
      this.firstPageUrl,
      this.from,
      this.lastPage,
      this.lastPageUrl,
      this.links,
      this.nextPageUrl,
      this.path,
      this.perPage,
      this.prevPageUrl,
      this.to,
      this.total});

  Episode.fromJson(Map<String, dynamic> json) {
    currentPage = json['current_page'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
    firstPageUrl = json['first_page_url'];
    from = json['from'];
    lastPage = json['last_page'];
    lastPageUrl = json['last_page_url'];
    if (json['links'] != null) {
      links = <Links>[];
      json['links'].forEach((v) {
        links?.add(Links.fromJson(v));
      });
    }
    nextPageUrl = json['next_page_url'];
    path = json['path'];
    perPage = json['per_page'];
    prevPageUrl = json['prev_page_url'];
    to = json['to'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['current_page'] = currentPage;
    if (this.data != null) {
      data['data'] = this.data?.map((v) => v.toJson()).toList();
    }
    data['first_page_url'] = firstPageUrl;
    data['from'] = from;
    data['last_page'] = lastPage;
    data['last_page_url'] = lastPageUrl;
    if (links != null) {
      data['links'] = links?.map((v) => v.toJson()).toList();
    }
    data['next_page_url'] = nextPageUrl;
    data['path'] = path;
    data['per_page'] = perPage;
    data['prev_page_url'] = prevPageUrl;
    data['to'] = to;
    data['total'] = total;
    return data;
  }
}

class EData {
  int? id;
  String? name;
  String? img;
  int? orderId;

  EData({this.id, this.name, this.img, this.orderId});

  EData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    img = json['img'];
    orderId = json['order_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['img'] = img;
    data['order_id'] = orderId;
    return data;
  }
}

class Links {
  String? url;
  String? label;
  bool? active;

  Links({this.url, this.label, this.active});

  Links.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    label = json['label'];
    active = json['active'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = url;
    data['label'] = label;
    data['active'] = active;
    return data;
  }
}
