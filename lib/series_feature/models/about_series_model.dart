class AboutSeries {
  late final String totalTime;
  late final String difficulty;
  late final String intensity;

  AboutSeries(
      {required this.totalTime,
      required this.difficulty,
      required this.intensity});

  AboutSeries.fromJson(Map<String, dynamic> json) {
    totalTime = json['total_time'];
    difficulty = json['difficulty'];
    intensity = json['intensity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['total_time'] = totalTime;
    data['difficulty'] = difficulty;
    data['intensity'] = intensity;
    return data;
  }
}
