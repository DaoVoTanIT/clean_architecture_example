part of 'movie_detail_bloc.dart';

@freezed
class MovieDetailState extends Equatable {
  @override
  List<Object?> get props => [];
}

class MovieDetailInitialState extends MovieDetailState {}

class MovieDetailLoadingState extends MovieDetailState {}

class MovieDetailByIdSuccessState extends MovieDetailState {
  final MovieInformationModel movieInformationModel;
  MovieDetailByIdSuccessState({required this.movieInformationModel});
  @override
  List<Object> get props => [movieInformationModel];
}

class MovieDetailErrorState extends MovieDetailState {
  final String message;
  MovieDetailErrorState(this.message);

  @override
  List<Object> get props => [message];
}
