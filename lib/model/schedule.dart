class Schedule {
  int? id;
  int? programId;
  String? time;
  int? dayId;
  int? type;
  String? createdAt;
  String? updatedAt;
  String? proName;
  String? presenter;
  Null? pImg;

  Schedule(
      {this.id,
      this.programId,
      this.time,
      this.dayId,
      this.type,
      this.createdAt,
      this.updatedAt,
      this.proName,
      this.presenter,
      this.pImg});

  Schedule.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    programId = json['program_id'];
    time = json['time'];
    dayId = json['day_id'];
    type = json['type'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    proName = json['pro_name'];
    presenter = json['presenter'];
    pImg = json['p_img'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['program_id'] = programId;
    data['time'] = time;
    data['day_id'] = dayId;
    data['type'] = type;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['pro_name'] = proName;
    data['presenter'] = presenter;
    data['p_img'] = pImg;
    return data;
  }
}
