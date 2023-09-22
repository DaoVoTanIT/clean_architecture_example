part of 'movies_bloc.dart';

abstract class MoviesState extends Equatable {
  @override
  List<Object?> get props => [];
}

class MoviesInitialState extends MoviesState {}

class MoviesLoadingState extends MoviesState {}

class GetAllMoviesSuccessState extends MoviesState {
  final MoviesModel listMovies;
  GetAllMoviesSuccessState({required this.listMovies});
  @override
  List<Object> get props => [listMovies];
}

class MoviesErrorState extends MoviesState {
  final String message;
  MoviesErrorState(this.message);

  @override
  List<Object> get props => [message];
}
