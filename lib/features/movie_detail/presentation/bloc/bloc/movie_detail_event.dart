part of 'movie_detail_bloc.dart';

@freezed
class MovieDetailEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class GetMoviesEvent extends MovieDetailEvent {
  final String id;

  GetMoviesEvent({required this.id});
}
