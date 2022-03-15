part of 'series_bloc.dart';

@immutable
abstract class SeriesEvent extends Equatable {
  const SeriesEvent();

  @override
  List<Object> get props => [];
}

class SeriesLoading extends SeriesEvent {
  const SeriesLoading();
}

