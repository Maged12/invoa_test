part of 'series_bloc.dart';

@immutable
abstract class SeriesState extends Equatable {
  const SeriesState();

  @override
  List<Object> get props => [];
}

class SeriesInitial extends SeriesState {}

class Seriesloading extends SeriesState {}

class SeriesLoad extends SeriesState {
  const SeriesLoad(this.series);
  final Series series;
}
class SeriesErrorLoad extends SeriesState {
  const SeriesErrorLoad(this.message);
  final String message;
}
