import 'package:bloc/bloc.dart';
import '../models/series.dart';
import '../repos/series_repo.dart';

import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

part 'series_event.dart';
part 'series_state.dart';

class SeriesBloc extends Bloc<SeriesEvent, SeriesState> {
  SeriesBloc() : super(SeriesInitial()) {
    on<SeriesLoading>(_onSeriesLoading);
  }

  Future<void> _onSeriesLoading(
      SeriesLoading event, Emitter<SeriesState> emit) async {
    emit(Seriesloading());
    try {
      final Series series = await SeriesRepo().getSeries();
      emit(SeriesLoad(series));
    } catch (err) {
      emit(SeriesErrorLoad(err.toString()));
    }
  }
}
