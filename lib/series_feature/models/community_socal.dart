class CommunitySocal {
  late final String image;
  late final String name;
  late final String time;
  late final String comment;

  CommunitySocal({
    required this.image,
    required this.name,
    required this.time,
    required this.comment,
  });

  CommunitySocal.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    name = json['name'];
    time = json['time'];
    comment = json['comment'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image'] = image;
    data['name'] = name;
    data['time'] = time;
    data['comment'] = comment;
    return data;
  }
}
