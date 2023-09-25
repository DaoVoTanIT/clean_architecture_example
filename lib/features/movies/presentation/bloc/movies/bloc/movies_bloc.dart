import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:news_app_clean_architecture/core/di/service_locator.dart';
import 'package:news_app_clean_architecture/features/movies/domain/entity/movies/movies_model.dart';
import 'package:news_app_clean_architecture/features/movies/domain/usecase/usecase.dart';

part 'movies_event.dart';
part 'movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  MoviesBloc() : super(MoviesInitialState()) {
    on<GetMoviesEvent>((event, emit) async {
      try {
        emit(MoviesLoadingState());
        var movies = await serviceLocator<GetMoviesUseCase>().getMovies();
        emit(GetAllMoviesSuccessState(listMovies: movies));
      } catch (e) {
        emit(MoviesErrorState(e.toString()));
      }
    });
  }
}
