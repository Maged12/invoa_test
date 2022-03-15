class Coaches {
  late final String name;
  late final String about;

  Coaches({required this.name, required this.about});

  Coaches.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    about = json['about'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['about'] = about;
    return data;
  }
}
