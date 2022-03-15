class Classes {
  late final String classVideo;
  late final String className;
  late final String discription;

  Classes({
    required this.classVideo,
    required this.className,
    required this.discription,
  });

  Classes.fromJson(Map<String, dynamic> json) {
    classVideo = json['class_video'];
    className = json['class_name'];
    discription = json['discription'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['class_video'] = classVideo;
    data['class_name'] = className;
    data['discription'] = discription;
    return data;
  }
}
