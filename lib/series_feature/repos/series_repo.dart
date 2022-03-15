import 'package:invoa_test/series_feature/apis/series_api.dart';

import '../models/series.dart';


class SeriesRepo{
  final SeriesApi api = SeriesApi();

   Future<Series> getSeries() async {
    final String rawSeries = await api.getRawSeries();
    final Series series = Series.fromJson(rawSeries);
    return series;
  }
}