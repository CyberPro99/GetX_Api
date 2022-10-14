class LastEpisod {
  int ?id;
  String ?name;
  String ?img;

  LastEpisod({this.id, this.name, this.img});

  LastEpisod.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    img = json['img'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['img'] = img;
    return data;
  }
}