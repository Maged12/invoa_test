import 'dart:convert';

import 'about_series_model.dart';
import 'classes_model.dart';
import 'coaches_model.dart';
import 'community_socal.dart';


class Series {
  late final String coverPhoto;
  late final String seriesName;
  late final List<Coaches> coaches;
  late final AboutSeries aboutSeries;
  late final List<Classes> classes;
  late final List<CommunitySocal> communitySocal;

  Series(
      {required this.coverPhoto,
      required this.seriesName,
      required this.coaches,
      required this.aboutSeries,
      required this.classes,
      required this.communitySocal});

  Series.fromMap(Map<String, dynamic> json) {
    coverPhoto = json['cover_photo'];
    seriesName = json['series_name'];
    coaches = <Coaches>[];
    json['coaches'].forEach((v) {
      coaches.add(Coaches.fromJson(v));
    });
    aboutSeries = AboutSeries.fromJson(json['about_series']);
    classes = <Classes>[];
    json['classes'].forEach((v) {
      classes.add(Classes.fromJson(v));
    });

    communitySocal = <CommunitySocal>[];
    json['community_socal'].forEach((v) {
      communitySocal.add(CommunitySocal.fromJson(v));
    });
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['cover_photo'] = coverPhoto;
    data['series_name'] = seriesName;
    data['coaches'] = coaches.map((v) => v.toJson()).toList();
    data['about_series'] = aboutSeries.toJson();
    data['classes'] = classes.map((v) => v.toJson()).toList();
    data['community_socal'] = communitySocal.map((v) => v.toJson()).toList();
    return data;
  }

  String toJson() => json.encode(toMap());

  factory Series.fromJson(String source) => Series.fromMap(json.decode(source));
}
