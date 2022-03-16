// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:invoa_test/series_feature/bloc/series_bloc.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  group('SeriesBloc', () {
    late SeriesBloc seriesBloc;

    setUp(() {
      seriesBloc = SeriesBloc();
    });
    blocTest(
      'emits SeriesLoad when SeriesLoading is added',
      build: () => seriesBloc,
      act: (SeriesBloc bloc) => bloc.add(const SeriesLoading()),
      expect: () => [isA<Seriesloading>(),isA<SeriesLoad>()],
    );
  });
}
