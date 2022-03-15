import 'package:flutter/services.dart';

class SeriesApi {
  Future<String> getRawSeries() async {
    String data = await rootBundle.loadString('assets/data.json');
    return data;
  }
}
